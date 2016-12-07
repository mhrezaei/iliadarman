<?php

namespace App\Http\Middleware;

use App\Models\Domain;
use App\Traits\GlobalControllerTrait;
use Closure;
use Illuminate\Support\Facades\Session;

class Subdomain
{
    use GlobalControllerTrait;
    public function handle($request, Closure $next)
    {
        if ($this->getDomain() == 'fa')
        {
            Session::put('lang', 'persian');
        }
        elseif ($this->getDomain() == 'en')
        {
            Session::put('lang', 'english');
        }
        elseif ($this->getDomain() == 'ar')
        {
            Session::put('lang', 'arabic');
        }
        else
        {
            Session::put('lang', 'persian');
        }
        return $next($request);
    }
}
