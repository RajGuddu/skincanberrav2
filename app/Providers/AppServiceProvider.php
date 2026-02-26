<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

// use Illuminate\Support\Facades\View;
// use Illuminate\Support\Facades\Cache;
// use App\Models\Admin\SettingsModel;
// use App\Models\Common_model;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        /*$commonmodel = new Common_model;
        View::composer('_layouts.header', function ($view) {

            $settings = Cache::remember('site_settings', 3600, function () {
                return SettingsModel::find(1);
            });

            $services = Cache::remember('active_services', 3600, function () {
                // return \DB::table('tbl_services')
                //     ->where('status',1)
                //     ->get();
                return $commonmodel->getAllRecord('tbl_services',['status'=>1]);
            });

            $view->with(compact('settings','services'));
        });*/
    }
}
