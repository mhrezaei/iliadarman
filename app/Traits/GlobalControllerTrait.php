<?php
namespace App\Traits;


use Illuminate\Support\Facades\Session;

trait GlobalControllerTrait
{
	public function getDomain()
	{
		$subdomain = str_replace('http://', '', url(''));
		$subdomain = str_replace('https://', '', $subdomain);
		$subdomain = explode('.', $subdomain);
		if ($subdomain[0] == 'www')
		{
			if ($subdomain[1] == 'diamondcard')
			{
				$subdomain = 'fa';
			}
			else
			{
				$subdomain = $subdomain[1];
			}
		}
		else
		{
			if ($subdomain[0] == 'diamondcard')
			{
				$subdomain = 'fa';
			}
			else
			{
				$subdomain = $subdomain[0];
			}
		}

		return $subdomain;
	}

	public function domain()
	{
		if (Session::has('lang'))
		{
			return Session::get('lang');
		}
		else
		{
			return 'persian';
		}
	}
}