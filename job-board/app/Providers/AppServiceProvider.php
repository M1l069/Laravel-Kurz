<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

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
        if (app()->has('debugbar')) {
            $debugbar = app('debugbar');
            $debugbar->enableCollector('messages');
            $debugbar->enableCollector('route');
            $debugbar->enableCollector('models');
            $debugbar->enableCollector('exceptions');
            $debugbar->enableCollector('gate');
            $debugbar->enableCollector('session');
        }
    }
}
