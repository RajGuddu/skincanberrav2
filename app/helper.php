<?php
    use App\Services\CartService;
    use App\Models\Common_model;

    if(!function_exists('alertBS')){
        function alertBS($message, $type){
            return '<div class="alert alert-'.$type.' alert-dismissible">
                        <strong class="text-primary">'.$message.'</strong>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>';
        }
    }

    if (!function_exists('cart')) {
        function cart()
        {
            return app(CartService::class);
        }
    }

    if(!function_exists('is_privilege')){
        function is_privilege($menu_id, $functionId = null){
            if(session()->has('admindata')){
                $privilege_id = session()->get('privilege_id');
                $commonmodel = new Common_model;
                $data = $commonmodel->is_user_privilege($privilege_id, $menu_id, $functionId);
                if(!empty($data)){
                    //print_r($data); exit;
                    return $menu_id;
                }else{
                    return 0;
                }
            }else{
                return 0;
            }
        }
    }