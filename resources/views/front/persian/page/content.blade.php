<div class="page-bg">
    <div class="part-title"> {{ $page->title }} </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-center">
                <div class="page-content">
                    <section class="panel post-single">
                        @if($page->featured_image)
                            <a href="#" class="thumbnail"><img src="{{ $page->say('featured_image') }}"></a>
                        @endif
                        <div class="content">
                            {!! $page->text !!}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>