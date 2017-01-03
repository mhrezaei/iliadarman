<?php

namespace App\Providers;

use App\Models\Category;
use App\Models\Post;
use App\Traits\GlobalControllerTrait;
use Illuminate\Support\ServiceProvider;

class ServicesMenuServiceProvider extends ServiceProvider
{
    use GlobalControllerTrait;
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {

    }

    public static function get()
    {
        if (SettingServiceProvider::getLocale() == 'fa')
        {
            return Category::where('branch_id', 15)->get();
        }
        elseif (SettingServiceProvider::getLocale() == 'en')
        {
            return Category::where('branch_id', 12)->get();
        }
        elseif (SettingServiceProvider::getLocale() == 'ar')
        {
            return Category::where('branch_id', 17)->get();
        }
        else
        {
            return Category::where('branch_id', 15)->get();
        }
    }
}
