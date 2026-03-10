<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

// use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Mail;
use App\Models\Common_model;
use App\Models\ServiceModel;

class Users extends Controller
{
    private $commonmodel;
    public function __construct(){
        $this->commonmodel = new Common_model;
    }
    public function index(Request $request){
        
        $data['users'] = $this->commonmodel->get_users_list();
        
        return view('admin.users.usersIndex', $data);
    }
    public function add_user(Request $request){
        $data = $post = [];
        if ($request->isMethod('POST')){
            // print_r($_POST); exit;
            $validation = $this->validate($request, [
                'name' =>'required',
                'email' =>'required|email|unique:tbl_admin,email',
                'image' => 'image|mimes:jpeg,png,jpg,gif,webp|max:500',
                'phone' => 'numeric|digits:10',
                ],[
                    'name.required'=>'The full name is required',
                    'email.email'=>'Enter a valid email address',
                
            ]);
            if($validation){
                if($request->hasFile('image')){
                    if ($request->file('image')->isValid()) {
                        $filename = $request->file('image')->getClientOriginalName();
                        $ext = $request->file('image')->extension();
                        $newfilename = 'user_'.time().'.'.$ext;
                        $path = Storage::disk('public_root')->putFileAs('images/', $request->file('image'), $newfilename);
                        if($path){
                            Storage::disk('public_root')->delete('images/' . $request->old_image);
                            $post['image'] = $newfilename;
                        }
                    }
                }
                $post['name'] = $request->input('name');
                $post['email'] = $request->input('email');
                $post['phone'] = $request->input('phone');
                $post['address'] = $request->input('address');
                if($request->services->isNotEmpty()){
                    $post['services'] = implode(',',$request->services);
                }
                $post['privilege_id'] = 4;
                $post['status'] = $request->input('status');
                $password = mt_rand(100000, 999999);
                $post['password'] = Hash::make($password,['rounds'=>12]);

                $inserted = $this->commonmodel->crudOperation('C','tbl_admin',$post);

                if($inserted){
                    $mailData = [
                        'employee_name'   => $request->input('name'),
                        'employee_email'  => $request->input('email'),
                        'employee_password'  => $password,
                        'created_at' => date('d-M-Y h:i A'),
                        
                    ];
                    $mailTo = $request->input('email');
                    Mail::send('emailer.account_created', $mailData, function ($message) use ($mailTo){
                        $message->to($mailTo)
                                ->subject('Account Created');
                    });
                    Mail::send('emailer.new_emp_acc_create', $mailData, function ($message) use ($mailData){
                        $message->to(ADMIN_MAIL_TO)
                                ->subject('Employee Account Created –'.$mailData['employee_name']);
                    });
                    $request->session()->flash('message',['msg'=>'Record added successfully!','type'=>'success']);
                }else{
                    $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                }
                return redirect()->to('admin/users');
            }
        }
        $data['services'] = ServiceModel::where('status',1)->orderBy('sv_id','desc')->get();
        return view('admin.users.add_edit_user', $data);
    }
    public function edit_user(Request $request, $user_id){
        $data = $post = [];
        if ($request->isMethod('POST')){
            // print_r($_POST); exit;
            $rule = [
                'name' =>'required',
                'email' =>'required|email',
                'image' => 'image|mimes:jpeg,png,jpg,gif,webp|max:500',
                'phone' => 'numeric|digits:10',
                ];
            if($request->input('email') != $request->input('oldEmail')){
                $rule['email'] = 'required|email|unique:tbl_admin,email';
            }
            $error = [
                    'name.required'=>'The full name is required',
                    'email.email'=>'Enter a valid email address',
                
            ];
            $validation = $this->validate($request, $rule, $error);
            if($validation){
                if($request->hasFile('image')){
                    if ($request->file('image')->isValid()) {
                        $filename = $request->file('image')->getClientOriginalName();
                        $ext = $request->file('image')->extension();
                        $newfilename = 'user_'.time().'.'.$ext;
                        $path = Storage::disk('public_root')->putFileAs('images/', $request->file('image'), $newfilename);
                        if($path){
                            Storage::disk('public_root')->delete('images/' . $request->old_image);
                            $post['image'] = $newfilename;
                        }
                    }
                }
                $post['name'] = $request->input('name');
                $post['email'] = $request->input('email');
                $post['phone'] = $request->input('phone');
                $post['address'] = $request->input('address');
                if(!empty($_POST['services'])){
                    $post['services'] = implode(',',$request->services);
                }else{
                    $post['services'] = null;
                }
                // $post['privilege_id'] = 4;
                $post['status'] = $request->input('status');
                // $password = mt_rand(100000, 999999);
                // $post['password'] = Hash::make($password,['rounds'=>12]);

                $updated = $this->commonmodel->updateRecord('tbl_admin',$post,['user_id'=>$user_id]);

                if($updated){
                    if($user_id == 1){
                        $admin_info = $this->commonmodel->crudOperation('R1','tbl_admin','',['user_id'=>$user_id]);
                        $sessionData = array(
                            'user_id' => $admin_info->user_id,
                            'name' => $admin_info->name,
                            'email' => $admin_info->email,
                            'phone' => $admin_info->phone,
                            'address' => $admin_info->address,
                            'image' => $admin_info->image,
                            'privilege_id' => $admin_info->privilege_id,
                            'status' => $admin_info->status,
                            'admindata' => true,
                        );
                        $request->session()->put($sessionData);
                    }

                    $request->session()->flash('message',['msg'=>'Record updated successfully!','type'=>'success']);
                }else{
                    $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                }
                return redirect()->to('admin/users');
            }
        }
        if($user_id){
            $data['record'] = $this->commonmodel->crudOperation('R1','tbl_admin','',['user_id'=>$user_id]);
        }
        $data['services'] = ServiceModel::where('status',1)->orderBy('sv_id','desc')->get();
        return view('admin.users.add_edit_user', $data);
    }
    
    public function delete_user(Request $request, $id=null){
        if($id){
            $record = $this->commonmodel->crudOperation('R1','tbl_admin','',['user_id'=>$id]);
            if(!empty($record)){
                $imagePath = public_path('assets/uploads/images/' . $record->image);
                if (!empty($record->image) && File::exists($imagePath)) {
                    File::delete($imagePath);
                }
                // $image2Path = public_path('assets/uploads/images/' . $record->thumb_image);
                // if (!empty($record->thumb_image) && File::exists($image2Path)) {
                //     File::delete($image2Path);
                // }
                if($this->commonmodel->crudOperation('D','tbl_admin','',['user_id'=>$id])){
                    $request->session()->flash('message',['msg'=>'Record Deleted.','type'=>'success']);
                }else{
                    $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                }
            }
        }
        return redirect()->to('admin/users');
    }
    
}
