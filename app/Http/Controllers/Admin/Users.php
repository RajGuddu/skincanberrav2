<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

// use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use App\Models\Common_model;
// use App\Models\ServiceVariantsModel;

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
                $post['privilege_id'] = 4;
                $inserted = $this->commonmodel->crudOperation('C','tbl_cms',$post);
            }
        }
        return view('admin.users.add_edit_user', $data);
    }
    public function purchased_courses(Request $request, $id){
        $data = [];
        $data['customer'] = $this->commonmodel->crudOperation('R1','tbl_member','',['m_id'=>$id]);
        $data['Pcourses'] = $this->commonmodel->get_purchased_courses_by_customers($id);
        return view('admin.customers.purchased_courses', $data);
    }
    public function new_orders(Request $request){
        $data['pageTitle'] = 'All New Orders';
        // $data['customer'] = $this->commonmodel->crudOperation('R1','tbl_member','',['m_id'=>$id]);
        $data['orders'] = $this->commonmodel->get_all_new_product_order(1);
        // echo '<pre>'; print_r($data['orders']); exit;
        return view('admin.customers.new_orders', $data);
    }
    public function change_order_status(Request $request){
        $data = $post = [];
        if($request->isMethod('POST')){
            $id = $request->input('orderid');
            $post['status'] = $request->input('status');
            if($id){
                $post['update_at'] = date('Y-m-d H:i:s');
                $updated = $this->commonmodel->crudOperation('U','tbl_product_order',$post,['id'=>$id]);
            }
            if(isset($updated)){
                $request->session()->flash('message',['msg'=>'Status changed successfully!','type'=>'success']);
            }else{
                $request->session()->flash('message',['msg'=>'Something went wrong! Please Try After Sometimes...','type'=>'danger']);
            }

        }
        return redirect()->to('admin/new_orders');
        
    }
    public function all_orders(Request $request){
        $data['pageTitle'] = 'All Orders';
        // $data['customer'] = $this->commonmodel->crudOperation('R1','tbl_member','',['m_id'=>$id]);
        $data['orders'] = $this->commonmodel->get_all_new_product_order();
        // echo '<pre>'; print_r($data['orders']); exit;
        return view('admin.customers.new_orders', $data);
    }
    /*public function delete_cms(Request $request, $id=null){
        if($id){
            $record = $this->commonmodel->crudOperation('R1','tbl_cms','',['id'=>$id]);
            if(!empty($record)){
                $imagePath = public_path('assets/uploads/images/' . $record->cms_banner);
                if (!empty($record->cms_banner) && File::exists($imagePath)) {
                    File::delete($imagePath);
                }
                // $image2Path = public_path('assets/uploads/images/' . $record->thumb_image);
                // if (!empty($record->thumb_image) && File::exists($image2Path)) {
                //     File::delete($image2Path);
                // }
                if($this->commonmodel->crudOperation('D','tbl_cms','',['id'=>$id])){
                    $request->session()->flash('message',['msg'=>'Record Deleted.','type'=>'success']);
                }else{
                    $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                }
            }
        }
        return redirect()->to('admin/cms');
    }
     public function variants(Request $request, $id=null,$vid=null){
        $data = [];
        if($request->isMethod('POST')){
            $validated = $this->validate($request, [
                'v_name' => 'required',
                'v_url' => 'required',
                'mrp' => 'required|integer',
                'sp' => 'required|integer|lte:mrp',
            ],
            [
                'v_url.required' => 'Url is required',
            ]);
            if($validated){
                // print_r($_POST); exit;
                    if($request->hasFile('photo')){
                        if ($request->file('photo')->isValid()) {

                            $file = $request->file('photo');
                            do {
                                $webpFilename = 'svariant-'. Str::random(8) .'.webp';
                                $exists = ServiceVariantsModel::where('photo', $webpFilename)->exists();
                            } while ($exists);
                            $image = Image::make($file)->encode('webp', 80);
                            $path = Storage::disk('public_root')->put('images/'. $webpFilename, (string) $image);
                            if($path){
                                if (isset($_POST['photo2']) && !empty($_POST['photo2'])) {
                                    Storage::disk('public_root')->delete('images/' . $_POST['photo2']);
                                }
                                $post['photo'] = $webpFilename;
                            }
                        }
                    }
                    $post['sv_id'] = $id;
                    $post['v_name'] = $request->input('v_name');
                    $post['v_url'] = $request->input('v_url');
                    $post['mrp'] = $request->input('mrp');
                    $post['sp'] = $request->input('sp');
                    $post['details'] = $request->input('details');
                    $post['status'] = $request->input('status');
                    if(!$vid){
                        $post['added_at'] = date('Y-m-d H:i:s');
                        $inserted = ServiceVariantsModel::create($post);

                    }else{
                        $post['update_at'] = date('Y-m-d H:i:s');
                        $updated = ServiceVariantsModel::where('vid',$vid)->update($post);
                    }
                    if(isset($inserted)){
                        $request->session()->flash('message',['msg'=>'Variants added successfully!','type'=>'success']);
                    }elseif(isset($updated)){
                        $request->session()->flash('message',['msg'=>'Variants updated successfully!','type'=>'success']);
                    }else{
                        $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                    }

                    return redirect()->to('admin/variants/'.$id);
            }
        }
        if($vid){
            $data['variant'] = ServiceVariantsModel::where('vid', $vid)->first();
        }
        $data['service'] = ServiceModel::where('sv_id', $id)->first();
        $data['variants'] = ServiceVariantsModel::where('sv_id', $id)->orderBy('vid','desc')->get();
        return view('admin.services.variantsIndex', $data);
    }
    public function delete_variants(Request $request, $id=null, $vid=null){
        if($id){
            $record = ServiceVariantsModel::where([['vid','=',$vid],['sv_id','=',$id]])->first();
            if($record){
                $imagePath = public_path('assets/uploads/images/' . $record->photo);
                if (!empty($record->photo) && File::exists($imagePath)) {
                    File::delete($imagePath);
                }
                if(ServiceVariantsModel::where('vid', $vid)->delete()){

                    $request->session()->flash('message',['msg'=>'Record Deleted.','type'=>'success']);
                }else{
                    $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
                }
            }
        }
        return redirect()->to('admin/variants/'.$id);
    }*/
}
