<div class="page-bg">
    <div class="part-title"> {{ $category->title }} </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-center">
                <div class="page-content">
                    <div class="row">
                        @if($products)
                            @foreach($products as $product)
                        <div class="col-sm-4">
                            <section class="panel post-item">
                                <a href="{{ $product->say('link') }}" class="thumbnail"><img src="{{ $product->say('featured_image') }}"></a>
                                <div class="content"> <a href="{{ $product->say('link') }}" class="title"> {{ $product->say('title') }} </a>
                                    <p class="excerpt">{!! $product->say('abstract') !!}</p>
                                </div>
                            </section>
                        </div>
                            @endforeach
                        @else
                            <div class="alert red">
                                <p>{{ trans('front.no_data') }}</p>
                            </div>
                        @endif
                    </div>
                    <div class="row" style="text-align: center; margin: 0 auto;">
                        {!! $products->render() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>