<a href="{{ url('/') }}" id="foot-logo"><img src="{{ url('/' . Setting::get('site_logo_bw')) }}" width="150"></a>
<div class="simple-links">
    <a href="{{ url('/contact') }}"> {{ trans('front.contact_us') }}</a>
    <a href="{{ url('/pages/about_page') }}"> {{ trans('front.about') }}</a>
    <a href="{{ url('/pages/certificate') }}">{{ trans('front.certificate') }}</a>
    <a href="{{ url('/news') }}"> {{ trans('front.news') }} </a>
</div>