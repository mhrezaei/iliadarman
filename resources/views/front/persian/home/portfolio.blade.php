<!-- Portfolio -->
@if(sizeof($categories))
<section id="services-image">
    <div class="part-title"> {{ $categories[0]->branch->plural_title }} </div>
    <div class="row">
        @foreach($categories as $category)
        <div class="col-sm-3">
            <a href="{{ url('/products/' . $category->id) }}" class="service">
                <section class="panel">
                    <article> <img src="{{ $category->image }}">
                        <div class="title"> {{ $category->title }} </div>
                    </article>
                </section>
            </a>
        </div>
        @endforeach
    </div>
</section>
@endif