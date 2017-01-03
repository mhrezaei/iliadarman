@extends('front.persian.frame.frame')

@section('page_title')
    {{ trans('front.site_title') }} | {{ trans('front.products') }}
@endsection
@section('content')
    @include('front.persian.products.content')
@endsection