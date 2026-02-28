<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AuthCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    private $adminUrl = [
        'admin/users' => [2,1], 'admin/add_user' => [2,2], 'admin/edit_user/*' => [2,3], 'admin/delete_user/*' => [2,4],
        'admin/cms' => [3,1], 'admin/add_edit_cms' => [3,2], 'admin/add_edit_cms/*' => [3,3], 'admin/delete_cms/*' => [3,4],
        'admin/banner' => [4,1], 'admin/add_edit_banner' => [4,2], 'admin/add_edit_banner/*' => [4,3], 'admin/delete_banner/*' => [4,4],
        'admin/homeContent' => [5,1],
        'admin/aboutContent' => [6,1],
        'admin/customers' => [7,1], 'admin/customer_orders/*' => [7,2], 'admin/purchased_courses/*' => [7,3],
        'admin/new_orders' => [8,1], 'admin/change_order_status' => [8,2],
        'admin/all_orders' => [9,1],
        'admin/appointment' => [10,1], 'admin/appointment/*' => [10,2],
        'admin/appointment-list' => [11,1], 'admin/appointment-list/*' => [11,2], 'admin/delete_appointment/*' => [11,3],
        'admin/testimonials' => [12,1], 'admin/add_edit_testimonial' => [12,2], 'admin/add_edit_testimonial/*' => [12,3], 'admin/delete_testimonial/*' => [12,4],
        'admin/contact_us' => [13,1],
        'admin/services' => [14,1], 'admin/add_service' => [14,2], 'admin/edit_service/*' => [14,3], 'admin/delete_service/*' => [14,4],
        'admin/realResult' => [15,1], 'admin/add_realResult' => [15,2], 'admin/edit_realResult/*' => [15,3], 'admin/delete_realResult/*' => [15,4],
        'admin/product_category' => [16,1], 'admin/product_category/*' => [16,2], 'admin/delete_pro_category/*' => [16,3],
        'admin/products' => [17,1], 'admin/add_edit_product' => [17,2], 'admin/add_edit_product/*' => [17,3], 'admin/delete_product/*' => [17,4],
        'admin/courses' => [18,1], 'admin/courses/*' => [18,2], 'admin/delete_course/*' => [18,3],
        'admin/holidays' => [19,1], 'admin/holidays/*' => [19,2], 'admin/delete_holiday/*' => [19,3],
        'admin/settings' => [20,1], 'admin/settings' => [20,2],
    ];

    public function handle(Request $request, Closure $next): Response
    {
        if(!$request->session()->has('admindata')){
            $msg = '';
            if($request->is('admin/*')){
                $msg = 'You must be loged in.';
            }
            return redirect()->to('/'.ADMIN)->with('err', $msg);
        }else{
            $menuId = $this->check_privilege();
            if(! $menuId){
                return redirect()->to('/authentication-failed');
            }
            return $next($request);
        }
    }
    public function check_privilege(){
        foreach($this->adminUrl as $key=>$val){
            if(request()->is($key)){
                return is_privilege($val[0], $val[1]);
            }
        }
        return true;
    }
}
