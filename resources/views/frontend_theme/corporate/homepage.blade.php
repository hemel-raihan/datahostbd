@extends('frontend_theme.corporate.front_layout.app')

@section('styles')

@endsection


@section('content')


        @if ($page->rightsidebar_id == 0 && $page->leftsidebar_id == 0)
        <div class="postcontent col-lg-12">
        @elseif(!$page->rightsidebar_id == 0 && $page->leftsidebar_id == 0)
        <div class="postcontent col-lg-9">
        @elseif($page->rightsidebar_id == 0 && !$page->leftsidebar_id == 0)
        <div class="postcontent col-lg-9">
        @elseif(!$page->rightsidebar_id == 0 && !$page->leftsidebar_id == 0)
        <div class="postcontent col-lg-6">
        @endif

        @foreach ($page->pagebuilders as $pagebuilder)
        @if ($pagebuilder->status == 1)
        <div class="{{($pagebuilder->container == 'container-sm') ? 'container-sm' : '' }} clearfix" style="background-color: {{$pagebuilder->background_color}}; background-image: url('{{asset('uploads/sectionpagephoto/'.$pagebuilder->background_img)}}');  border: {{$pagebuilder->border}} {{$pagebuilder->border_style}} {{$pagebuilder->border_color}};">

            @if ($pagebuilder->title_show == 1)
            <div style="padding-top:20px;" class="heading-block center">
                <h2>{{$pagebuilder->title}}</h2>
            </div>
            @endif


            <div class="row">
                @foreach ($pagebuilder->elements as $key => $element)
                @if ($pagebuilder->layout == 'One Column')
                <div class="col-md-12" style=" margin-top: 40px;">
                @elseif ($pagebuilder->layout == 'Two Column')
                <div class="col-md-6">
                @elseif ($pagebuilder->layout == 'Three Column')
                <div class="col-md-4" style="border: 3px solid rgb(224, 224, 224); padding:10px; margin-top: 25px;">
                @elseif ($pagebuilder->layout == 'One/Two Column')
                <div class="col-md-{{ ($key%2 == 0) ? 4 : 8 }}">
                @elseif ($pagebuilder->layout == 'Two/One Column')
                <div class="col-md-{{ ($key%2 == 0) ? 8 : 4 }}">
                @elseif ($pagebuilder->layout == 'One/Two/One Column')
                <div class="col-md-{{ ($key%2 == 0) ? 3 : ((!$key%2 == 0) ? 6 : 3) }}">
                @endif

                {{-- <div class=""> --}}

                    {{-- <div class="row col-mb-50"> --}}
                        <div class="{{($element->container == 'container-sm') ? 'container-sm' : '' }}">

                        @if($element->module_type == 'Blog Post')
                        @if ($element->title)
                        @if ($element->title_show == 1)
                        <div class="heading-block">
                            <h2>{{$element->title}}</h2>
                        </div>
                        @endif
                        @endif
                        @isset($blogposts)
                        @foreach ($blogposts as $blogpost)
                        <div class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }}">
                            {{-- <div class="entry col-sm-6 col-12"> --}}
                                <div class="grid-inner">
                                    @isset($blogpost->image)
                                    <div class="entry-image">
                                        <a href="#" data-lightbox="image"><img src="{{asset('uploads/postphoto/'.$blogpost->image)}}" alt="Standard Post with Image"></a>
                                    </div>
                                    @endisset
                                    @isset($blogpost->youtube_link)
                                    <div class="entry-image">
                                    <p>&nbsp;<iframe frameborder="1"  height="400" src="{{$blogpost->youtube_link}}" width="720"></iframe></p>
                                    </div>
                                    @endisset
                                    <div class="entry-title">
                                        <h2><a href="{{route('blog.details',$blogpost->slug)}}">{{$blogpost->title}}</a></h2>
                                    </div>
                                    <div class="entry-meta">
                                        <ul>
                                            <li><i class="icon-calendar3"></i> {{ \Carbon\Carbon::parse($blogpost->created_at)->isoFormat('Do MMM YYYY')}}</li>
                                            <li><a href="blog-single.html#comments"><i class="icon-comments"></i> 13</a></li>
                                            <li><a href="#"><i class="icon-camera-retro"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="entry-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, asperiores quod est tenetur in. Eligendi, deserunt, blanditiis est quisquam doloribus.</p>
                                        <a href="{{route('blog.details',$blogpost->slug)}}" class="more-link">Read More</a>
                                    </div>
                                </div>
                            {{-- </div> --}}
                        </div>
                        @endforeach
                        @endisset


                        @elseif ($element->module_type == 'Blog_Category_post')

                        @php
                            $category = App\Models\blog\category::with('posts')->find($element->category_id);
                        @endphp

                        @if ($element->title)
                        @if ($element->title_show == 1)
                        <div class="heading-block">
                            <h4>{{$element->title}}</h4>
                        </div>
                        @endif
                        @endif
                        @isset($category->posts)
                        <div id="oc-portfolio" class="owl-carousel portfolio-carousel carousel-widget" data-margin="20" data-pagi="false" data-autoplay="5000" data-items-xs="1" data-items-sm="2" data-items-md="3" data-items-xl="{{($element->layout == 'One Column') ? 1 : (($element->layout == 'Two Column') ? 2 : (($element->layout == 'Three Column') ? 3 : 4)) }}">
                        @foreach ($category->posts as $post)
                        @if ($post->status == 1)

                        {{-- <div class="posts-sm row col-mb-30" id="post-list-sidebar" >
                            <div class="entry col-12"  >
                                <div class="grid-inner row g-0" >

                                    <div class="col-auto">
                                        <div class="entry-image">
                                            <a href="{{route('blog.details',$post->slug)}}"><img src="{{asset('uploads/postphoto/'.$post->image)}}" alt="Image"></a>
                                        </div>
                                    </div>
                                    <div class="col ps-3">
                                        <div class="entry-title">
                                            <h4><a href="{{route('blog.details',$post->slug)}}">{{$post->title}}</a></h4>
                                        </div>
                                        <div class="entry-meta">
                                            <ul>
                                                <li>{{ \Carbon\Carbon::parse($post->created_at)->isoFormat('Do MMM YYYY')}}</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div> --}}


                        <div class="portfolio-item">
                            <div class="portfolio-image" style="width: {{$element->portfolio_width}}%;">
                                <a href="portfolio-single.html">
                                    <img src="{{asset('uploads/postphoto/'.$post->image)}}" alt="Open Imagination">
                                </a>
                                <div class="bg-overlay">
                                    <div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="350">
                                        <a href="{{asset('uploads/postphoto/'.$post->image)}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350" data-lightbox="image"><i class="icon-line-plus"></i></a>
                                    </div>
                                    <div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="350"></div>
                                </div>
                            </div>
                            @if ($post->title_show != null)
                            <div class="portfolio-desc">
                                <h3><a href="#">{{$post->title}}</a></h3>
                            </div>
                            @endif
                        </div>


                        @endif
                        @endforeach
                        </div>
                        @endisset
                    </br>

                        @elseif($element->module_type == 'Blog Category')
                        @if ($element->title)
                        @if ($element->title_show == 1)
                        <div class="heading-block">
                            <h2>{{$element->title}}</h2>
                        </div>
                        @endif
                        @endif
                        @isset($blogcategories)
                        @foreach ($blogcategories as $blogcategory)
                        <div class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }}">
                                <div class="feature-box fbox-rounded fbox-effect">
                                    <div class="fbox-icon">
                                        <a href="{{route('blog.posts',$blogcategory->id)}}"><img src="{{asset('uploads/categoryphoto/'.$blogcategory->image)}}"></a>
                                    </div>
                                    <div class="fbox-content">
                                        <h3>{{$blogcategory->name}}</h3>
                                        <p>{!!Str::limit($blogcategory->desc, 70)!!}</p>
                                    </div>
                                </div>
						</div>
                        @endforeach
                        @endisset


                        @elseif($element->module_type == 'Product Post')
                        @if ($element->title)
                        @if ($element->title_show == 1)
                        <div class="heading-block">
                            <h2>{{$element->title}}</h2>
                        </div>
                        @endif
                        @endif
                        @isset($productposts)
                        @php
                        $productcategories = \App\Models\Product\Productcategory::all();
                        @endphp
                        <div class="grid-filter-wrap">
                            <ul class="grid-filter" data-container="#portfolio">
                                <li class="activeFilter"><a href="#" data-filter="*">Show All</a></li>
                                @foreach ($productcategories as $category)
                                <li><a href="#" data-filter=".{{$category->id}}" >{{$category->name}}</a></li>
                                @endforeach
                            <div class="grid-shuffle rounded" data-container="#portfolio">
                                <i class="icon-random"></i>
                            </div>
                        </div>


                        <div id="portfolio" class="portfolio row grid-container gutter-20" data-layout="fitRows">
                        @foreach ($productposts as $productpost)
                        @foreach ($productpost->productcategories as $category)
                        <article class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }} {{$category->id}}">
                            <div class="grid-inner">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html">
                                        <img src="{{asset('uploads/productphoto/'.$productpost->image)}}" alt="Open Imagination">
                                    </a>
                                    <div class="bg-overlay">
                                        <div class="bg-overlay-content dark" data-hover-animate="fadeIn">
                                            <a href="{{asset('uploads/productphoto/'.$productpost->image)}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeOutUpSmall" data-hover-speed="350" data-lightbox="image" title="Image"><i class="icon-line-plus"></i></a>
                                            <a href="portfolio-single.html" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeOutUpSmall" data-hover-speed="350"><i class="icon-line-ellipsis"></i></a>
                                        </div>
                                        <div class="bg-overlay-bg dark" data-hover-animate="fadeIn"></div>
                                    </div>
                                </div>
                                <div class="portfolio-desc">
                                    <h3><a href="portfolio-single.html">{{$productpost->title}}</a></h3>
                                    <span><a href="#">Media</a>, <a href="#">Icons</a></span>
                                </div>
                            </div>
                        </article>
                        @endforeach
                        @endforeach
                        </div>

                        @endisset


                        @elseif ($element->module_type == 'Product_Category_post')

                        @php
                            $category = App\Models\Product\Productcategory::with('products')->find($element->product_category_id);
                        @endphp

                        @if ($element->title)
                        @if ($element->title_show == 1)
                        <div class="heading-block">
                            <h4>{{$element->title}}</h4>
                        </div>
                        @endif
                        @endif
                        @isset($category->products)
                        <div id="oc-portfolio" class="owl-carousel portfolio-carousel carousel-widget" data-margin="20" data-pagi="false" data-autoplay="5000" data-items-xs="1" data-items-sm="2" data-items-md="3" data-items-xl="{{($element->layout == 'One Column') ? 1 : (($element->layout == 'Two Column') ? 2 : (($element->layout == 'Three Column') ? 3 : 4)) }}">
                        @foreach ($category->products as $post)
                        @if ($post->status == 1)

                        {{-- <div class="posts-sm row col-mb-30" id="post-list-sidebar" >
                            <div class="entry col-12"  >
                                <div class="grid-inner row g-0" >

                                    <div class="col-auto">
                                        <div class="entry-image">
                                            <a href="{{route('blog.details',$post->slug)}}"><img src="{{asset('uploads/productphoto/'.$post->image)}}" alt="Image"></a>
                                        </div>
                                    </div>
                                    <div class="col ps-3">
                                        <div class="entry-title">
                                            <h4><a href="{{route('blog.details',$post->slug)}}">{{$post->title}}</a></h4>
                                        </div>
                                        <div class="entry-meta">
                                            <ul>
                                                <li>{{ \Carbon\Carbon::parse($post->created_at)->isoFormat('Do MMM YYYY')}}</li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div> --}}

                        <div class="portfolio-item">
                            <div class="portfolio-image" style="width: {{$element->portfolio_width}}%;">
                                <a href="portfolio-single.html">
                                    <img src="{{asset('uploads/productphoto/'.$post->image)}}" alt="Open Imagination">
                                </a>
                                <div class="bg-overlay">

                                    <div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="350"></div>
                                </div>
                            </div>
                            {{-- @if ($post->title_show != null) --}}
                            <div class="portfolio-desc" style="text-align: center;">
                                <h3><a href="#">{{$post->title}}</a></h3>
                                <p>{{$post->unit_price}}</p>

                            </div>
                            {{-- @endif --}}
                        </div>


                        @endif
                        @endforeach
                        </div>
                        @endisset
                    </br>


                        @elseif ($element->module_type == 'General Post')
                        @isset($generalposts)
                        @foreach ($generalposts as $generalpost)
                        <div class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }}">
                            {{-- <div class="entry col-sm-6 col-12"> --}}
                                <div class="grid-inner">
                                    @isset($blogpost->image)
                                    <div class="entry-image">
                                        <a href="#" data-lightbox="image"><img src="{{asset('uploads/contentpostphoto/'.$generalpost->image)}}" alt="Standard Post with Image"></a>
                                    </div>
                                    @endisset
                                    @isset($blogpost->youtube_link)
                                    <div class="entry-image">
                                    <p>&nbsp;<iframe frameborder="1"  height="400" src="{{$generalpost->youtube_link}}" width="720"></iframe></p>
                                    </div>
                                    @endisset
                                    <div class="entry-title">
                                        <h2><a href="{{route('general.details',$generalpost->id)}}">{{$generalpost->title}}</a></h2>
                                    </div>
                                    <div class="entry-meta">
                                        <ul>
                                            <li><i class="icon-calendar3"></i> {{ \Carbon\Carbon::parse($generalpost->created_at)->isoFormat('Do MMM YYYY')}}</li>
                                            <li><a href="blog-single.html#comments"><i class="icon-comments"></i> 13</a></li>
                                            <li><a href="#"><i class="icon-camera-retro"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="entry-content">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate, asperiores quod est tenetur in. Eligendi, deserunt, blanditiis est quisquam doloribus.</p>
                                        <a href="{{route('general.details',$generalpost->id)}}" class="more-link">Read More</a>
                                    </div>
                                </div>
                            {{-- </div> --}}
                        </div>
                        @endforeach
                        @endisset

                        @elseif($element->module_type == 'General Category')
                        @if ($element->title)
                        @if ($element->title_show == 1)
                        <div class="heading-block">
                            <h2>{{$element->title}}</h2>
                        </div>
                        @endif
                        @endif
                        @isset($generalcategories)
                        @foreach ($generalcategories as $generalcategory)
                        <div class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }}">

                                <div class="feature-box fbox-rounded fbox-effect">
                                    <div class="fbox-icon">
                                        <a href="{{route('general.posts',$generalcategory->id)}}"><img src="{{asset('uploads/contentcategoryphoto/'.$generalcategory->image)}}"></a>
                                    </div>
                                    <div class="fbox-content">
                                        <h3>{{$generalcategory->name}}</h3>
                                        <p>{!!Str::limit($generalcategory->desc, 70)!!}</p>
                                    </div>
                                </div>
						</div>
                        @endforeach
                        @endisset


                        @elseif($element->module_type == 'Service Category')
                        @isset($servicecategories)
                        @foreach ($servicecategories as $servicecategory)
                        <div class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }}">
                            <div class="feature-box fbox-center fbox-light fbox-effect border-bottom-0">
                                <div class="fbox-icon">
                                    <a href="{{route('service.posts',$servicecategory->id)}}"><img src="{{asset('uploads/servicecategory_photo/'.$servicecategory->image)}}" ></a>
                                </div>
                                <div class="fbox-content">
                                    <h3>{{$servicecategory->name}}<span class="subtitle">{!!$servicecategory->desc!!}</span></h3>
                                </div>

                            </div>
                        </div>
                        @endforeach
                        @endisset


                        @elseif($element->module_type == 'Service Post')
                        @isset($serviceposts)
                            <div id="oc-portfolio" class="owl-carousel portfolio-carousel carousel-widget" data-margin="20" data-pagi="false" data-autoplay="5000" data-items-xs="1" data-items-sm="1" data-items-md="3" data-items-xl="{{($element->layout == 'One Column') ? 1 : (($element->layout == 'Two Column') ? 2 : (($element->layout == 'Three Column') ? 3 : 4)) }}">
                                @foreach ($serviceposts as $servicepost)
                                <div class="portfolio-item">
                                    <div class="portfolio-image" style="width: {{$element->portfolio_width}}%;">
                                        <a href="{{route('service.details',$servicepost->id)}}">
                                            <img src="{{asset('uploads/servicephoto/'.$servicepost->image)}}" alt="Open Imagination">
                                        </a>
                                    </div>
                                    <div class="centered d-flex align-items-center justify-content-center"><a href="{{route('service.details',$servicepost->id)}}" style="color: #000; font-size: 24px;">{{$servicepost->title}}</a></div>
                                    {{-- <div class="portfolio-desc">
                                        <h3><a href="{{route('portfolio.posts',$portfoliocategory->id)}}">{{$post->title}}</a></h3>
                                    </div> --}}
                                </div>
                                @endforeach
                                </div>

                        @endisset


                        @elseif($element->module_type == 'Price-Table Post')
                        @isset($priceposts)
                        @foreach ($priceposts as $pricepost)
                        <div class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }}">

							<div class="pricing-box pricing-simple px-5 py-4 bg-light text-center text-md-start">
								<div class="pricing-title">
									<span class="text-danger">Most Popular</span>
									<h3>{{$pricepost->title}}</h3>
								</div>
								<div class="pricing-price">
									<span class="price-unit">&euro;</span>{{$pricepost->price}}<span class="price-tenure">{{$pricepost->duration}}</span>
								</div>
								<div class="pricing-features">
									{{-- <ul class="iconlist">
										<li><i class="icon-check text-smaller"></i> <strong>Premium</strong> Plugins</li>
										<li><i class="icon-check text-smaller"></i> <strong>SEO</strong> Features</li>
										<li><i class="icon-check text-smaller"></i> <strong>Full</strong> Access</li>
										<li><i class="icon-check text-smaller"></i> <strong>100</strong> User Accounts</li>
										<li><i class="icon-check text-smaller"></i> <strong>1 Year</strong> License</li>
										<li><i class="icon-check text-smaller"></i> <strong>24/7</strong> Support</li>
									</ul> --}}
                                    {!!$pricepost->body!!}
								</div>
								<div class="pricing-action">
									<a href="#" class="btn btn-danger btn-lg">Get Started</a>
								</div>
							</div>

						</div>
                        @endforeach
                        @endisset


                        @elseif($element->module_type == 'Price-Table Category')
                        @isset($pricecategories)
                        @foreach ($pricecategories as $pricecategory)
                        {{-- <div class="col-sm-6 col-lg-{{($element->layout == 'One Column') ? 12 : (($element->layout == 'Two Column') ? 6 : (($element->layout == 'Three Column') ? 4 : 3)) }}">

                                <div class="feature-box fbox-rounded fbox-effect">
                                    <div class="fbox-icon">
                                        <a href="{{route('price.posts',$pricecategory->id)}}"><img src="{{asset('uploads/pricecategory_photo/'.$pricecategory->image)}}"></a>
                                    </div>
                                    <div class="fbox-content">
                                        <h3>{{$pricecategory->name}}</h3>
                                        <p>{!!Str::limit($pricecategory->body, 100)!!}</p>
                                    </div>
                                </div>
						</div> --}}
                        @endforeach
                        @endisset


                        @elseif($element->module_type == 'Portfolio Category' && $element->status == true)
                        @isset($portfoliocategories)

                        <div id="oc-portfolio" class="owl-carousel portfolio-carousel carousel-widget" data-margin="1" data-pagi="false" data-autoplay="5000" data-items-xs="1" data-items-sm="2" data-items-md="3" data-items-xl="4">
                            @foreach ($portfoliocategories as $portfoliocategory)
                            <div class="portfolio-item">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html">
                                        <img src="{{asset('uploads/portfoliocategory_photo/'.$portfoliocategory->image)}}" alt="Open Imagination">
                                    </a>
                                    <div class="bg-overlay">
                                        <div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="350">
                                            <a href="{{asset('uploads/portfoliocategory_photo/'.$portfoliocategory->image)}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350" data-lightbox="image"><i class="icon-line-plus"></i></a>
                                            <a href="portfolio-single.html" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350"><i class="icon-line-ellipsis"></i></a>
                                        </div>
                                        <div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="350"></div>
                                    </div>
                                </div>
                                <div class="portfolio-desc">
                                    <h3><a href="{{route('portfolio.posts',$portfoliocategory->id)}}">{{$portfoliocategory->name}}</a></h3>
                                    {{-- <span><a href="#">Media</a>, <a href="#">Icons</a></span> --}}
                                </div>
                            </div>
                            @endforeach
                        </div>

                        @endisset


                        @elseif($element->module_type == 'Portfolio Post' && $element->status == true)
                        @isset($portfolioposts)

                        <div id="oc-portfolio" class="owl-carousel portfolio-carousel carousel-widget" data-margin="1" data-pagi="false" data-autoplay="5000" data-items-xs="1" data-items-sm="2" data-items-md="3" data-items-xl="4">
                            @foreach ($portfolioposts as $portfoliopost)
                            <div class="portfolio-item">
                                <div class="portfolio-image">
                                    <a href="portfolio-single.html">
                                        <img src="{{asset('uploads/portfoliophoto/'.$portfoliopost->image)}}" alt="Open Imagination">
                                    </a>
                                    <div class="bg-overlay">
                                        <div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="350">
                                            <a href="{{asset('uploads/portfoliophoto/'.$portfoliopost->image)}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350" data-lightbox="image"><i class="icon-line-plus"></i></a>
                                            <a href="portfolio-single.html" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350"><i class="icon-line-ellipsis"></i></a>
                                        </div>
                                        <div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="350"></div>
                                    </div>
                                </div>
                                {{-- <div class="portfolio-desc">
                                    <h3><a href="{{route('portfolio.details',$portfoliopost->id)}}">{{$portfoliopost->title}}</a></h3>
                                </div> --}}
                            </div>
                            @endforeach
                        </div>

                        @endisset


                        @else



                        @if ($element->title)
                        @if ($element->title_show == 1)
                        <div class="heading-block">
                            <h2>{{$element->title}}</h2>
                        </div>
                        @endif
                        @endif

                        @isset($element->galleryimg)
                        <div class="masonry-thumbs grid-container grid-4"  data-lightbox="gallery">
                            @php
                                $galaryimage = explode("|", $element->galleryimg);
                            @endphp
                            @foreach ($galaryimage as $key => $images)
                            <a class="grid-item" href="{{asset('uploads/elementgalleryphoto/'.$images)}}" data-lightbox="gallery-item"><img src="{{asset('uploads/elementgalleryphoto/'.$images)}}" alt="Gallery Thumb 1"></a>
                            @endforeach
                        </div>
                        @endisset


                        @isset($element->image)
                        {{-- <a href="https://vimeo.com/101373765" class="d-block position-relative rounded overflow-hidden" data-lightbox="iframe">
                            <img src="{{asset('uploads/elementphoto/'.$element->image)}}" alt="Image" class="w-100">
                            <div class="bg-overlay">
                                <div class="bg-overlay-content dark">
                                    <i class="i-circled i-light icon-line-play m-0"></i>
                                </div>
                                <div class="bg-overlay-bg op-06 dark"></div>
                            </div>
                        </a> --}}
                        <img src="{{asset('uploads/elementphoto/'.$element->image)}}" height="{{$element->img_height}}" width="{{$element->img_width}}" >
                        @endisset

                        {!!$element->body!!}

                        @endif

                    </div>
                    {{-- </div> --}}

                </div>
                @endforeach

                {{-- <section id="particles-news-js" class="container-lg slider-element swiper_wrapper min-vh-60 min-vh-md-80">
                    <div class="slider-inner">

                        <div class="swiper-container swiper-parent">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide dark">
                                    <div class="container">

                                        <div class="slider-caption slider-caption-center">
                                            <h2 data-animate="fadeInUp">AGILE1TECH CORP.</br>

                                                PASSIONATE FOR THE RIGHT SOLUTION

                                            </h2>

                                        </div>
                                    </div>
                                    <div class="swiper-slide-bg"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section> --}}
            </div>

            <div class="line"></div>

            {{-- <div class="row col-mb-50">
                <div class="col-md-5">
                    <a href="https://vimeo.com/101373765" class="d-block position-relative rounded overflow-hidden" data-lightbox="iframe">
                        <img src="images/others/1.jpg" alt="Image" class="w-100">
                        <div class="bg-overlay">
                            <div class="bg-overlay-content dark">
                                <i class="i-circled i-light icon-line-play m-0"></i>
                            </div>
                            <div class="bg-overlay-bg op-06 dark"></div>
                        </div>
                    </a>
                </div>

                <div class="col-md-7">
                    <div class="heading-block">
                        <h2>Globally Preferred Ecommerce Platform</h2>
                    </div>

                    <p>Worldwide John Lennon, mobilize humanitarian; emergency response donors; cause human experience effect. Volunteer Action Against Hunger Aga Khan safeguards women's.</p>

                    <div class="row col-mb-30">
                        <div class="col-sm-6 col-md-12 col-lg-6">
                            <ul class="iconlist iconlist-color mb-0">
                                <li><i class="icon-caret-right"></i> Responsive Ready Layout</li>
                                <li><i class="icon-caret-right"></i> Retina Display Supported</li>
                                <li><i class="icon-caret-right"></i> Powerful &amp; Optimized Code</li>
                                <li><i class="icon-caret-right"></i> 380+ Templates Included</li>
                            </ul>
                        </div>

                        <div class="col-sm-6 col-md-12 col-lg-6">
                            <ul class="iconlist iconlist-color mb-0">
                                <li><i class="icon-caret-right"></i> 12+ Headers &amp; Menu Designs</li>
                                <li><i class="icon-caret-right"></i> Premium Sliders Included</li>
                                <li><i class="icon-caret-right"></i> Light &amp; Dark Colors</li>
                                <li><i class="icon-caret-right"></i> e-Commerce Design Included</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> --}}

        </div>
        @endif
        @endforeach


@endsection()

@section('scripts')

@endsection
