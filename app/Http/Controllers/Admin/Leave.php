<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;


// use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Mail;

use App\Models\Common_model;
use App\Models\Admin\SettingsModel;


class Leave extends Controller
{
    private $commonmodel;
    public function __construct(){
        $this->commonmodel = new Common_model;
    }
    public function index(Request $request, $id=null){
        $data = [];
        if($request->isMethod('POST')){
            // print_r($_POST); exit;
            $rules = [
                'user_id' => 'required',
                'date_from' => 'required',
                'date_to' => 'required',
                'time_slot' => 'required|array|min:1',
                'time_slot.*' => 'required',
                'status' => 'required',
            ];
            $validated = $this->validate($request, $rules);
            
            if($validated){
                
                $post['user_id'] = $request->input('user_id');
                $post['date_from'] = date('Y-m-d', strtotime($request->input('date_from')));
                $post['date_to'] = date('Y-m-d', strtotime($request->input('date_to')));
                if(isset($request->alltime)){
                    $post['alltime'] = $request->alltime;
                    $post['time_slot'] = null;
                }else{
                    $post['time_slot'] = implode(',', $request->time_slot);
                    $post['alltime'] = null;
                    // print_r($post); exit;
                }

                $post['status'] = $request->input('status');
                $post['added_at'] = date('Y-m-d H:i:s');
                
                if(!$id){
                    $inserted = $this->commonmodel->crudOperation('C','tbl_leave',$post);
                }else{
                    $updated = $this->commonmodel->updateRecord('tbl_leave',$post,['id'=>$id]);
                }
                if(isset($inserted)){
                    $request->session()->flash('message',['msg'=>'Record added successfully!','type'=>'success']);
                }elseif(isset($updated)){
                    $request->session()->flash('message',['msg'=>'Record updated successfully!','type'=>'success']);
                }else{
                    $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                }

                return redirect()->to('admin/leave');
            }
        }
        if($id){
            $data['record'] = $this->commonmodel->crudOperation('R1','tbl_leave','',['id'=>$id]);
        }
        $data['listData'] = $this->commonmodel->get_leave();
        $data['serviceTime'] = $this->commonmodel->crudOperation('RA','tbl_service_time','',[['status','=',1]]); 
        $data['employees'] = $this->commonmodel->crudOperation('RA','tbl_admin','',[['status','=',1]]); 
        return view('admin.leave.leave_index', $data);
    }
    public function delete_leave(Request $request, $id=null){
        if($id){
            $record = $this->commonmodel->crudOperation('R1','tbl_leave','',['id'=>$id]);
            if(!empty($record)){
                
                if($this->commonmodel->crudOperation('D','tbl_leave','',['id'=>$id])){
                    $request->session()->flash('message',['msg'=>'Record Deleted.','type'=>'success']);
                }else{
                    $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                }
            }
        }
        return redirect()->to('admin/leave');
    }
    
   
}