				<!--APP-SIDEBAR-->
                @php
                     $auth = Illuminate\Support\Facades\Auth::guard('admin')->user();
                @endphp
				<div class="app-sidebar__overlay" data-bs-toggle="sidebar"></div>
				<aside class="app-sidebar">
					<div class="side-header">
						<a class="header-brand1" href="{{ url('index') }}">
                            {{-- @php
                            $setting  = \App\Models\Admin\Setting::where([['id',1]])->orderBy('id','desc')->first();
                            @endphp --}}
							{{-- <img src="{{ asset('frontend/images/browser_logo.png') }}" class="header-brand-img desktop-logo" alt="logo">
							<img src="{{ asset('frontend/images/browser_logo.png') }}" class="header-brand-img toggle-logo" alt="logo">
							<img src="{{ asset('frontend/images/browser_logo.png') }}" class="header-brand-img light-logo" alt="logo"> --}}
                            @isset($setting)
                            <img src="{{asset('uploads/settings/'.$setting->logo)}}" class="header-brand-img light-logo1" alt="logo">
                            @endisset

						</a><!-- LOGO -->
					</div>
					<ul class="side-menu">
						<li><h3>Main</h3></li>
						<li class="slide">
							<a class="side-menu__item"  data-bs-toggle="slide" href="{{route('admin.dashboard')}}"><i class="side-menu__icon fe fe-home"></i><span class="side-menu__label">Dashboard</span></a>
						</li>
						<!-- <li><h3>Widgets & Maps</h3></li> -->
						<!-- <li>
							<a class="side-menu__item" href="{{ url('widgets') }}"><i class="side-menu__icon fe fe-grid"></i><span class="side-menu__label">Widgets</span></a>
						</li> -->

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-layers"></i><span class="side-menu__label">Page Builder</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.custompages.create')}}" class="slide-item">Create Custom Page </a></li>
								<li><a href="{{route('admin.custompages.index')}}" class="slide-item">All Pages</a></li>
							</ul>
						</li>

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-layers"></i><span class="side-menu__label">Page Management</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.pages.create')}}" class="slide-item">Create New Page </a></li>
								<li><a href="{{route('admin.pages.index')}}" class="slide-item">All Pages</a></li>
							</ul>
						</li>

                        @if ($auth->hasPermission('app.product.posts.global') && $auth->hasPermission('app.product.categories.global'))
                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-shopping-cart"></i><span class="side-menu__label">Product Management</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
                                @if($auth->hasPermission('app.product.posts.create'))
								<li><a href="{{route('admin.products.create')}}" class="slide-item">Create New Product </a></li>
                                @endif
                                @if($auth->hasPermission('app.product.posts.self'))
								<li><a href="{{route('admin.products.index')}}" class="slide-item">All Products</a></li>
                                @endif
                                @if($auth->hasPermission('app.product.categories.create'))
								<li><a href="{{route('admin.productcategories.create')}}" class="slide-item">Add Category</a></li>
                                @endif
                                @if($auth->hasPermission('app.product.categories.self'))
                                <li><a href="{{route('admin.productcategories.index')}}" class="slide-item">All Categories</a></li>
                                @endif
							</ul>
						</li>
                        @endif

                        @if ($auth->hasPermission('app.blog.posts.global') && $auth->hasPermission('app.blog.categories.global'))
                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-globe"></i><span class="side-menu__label">Blog Management</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
                                @if($auth->hasPermission('app.blog.posts.create'))
								<li><a href="{{route('admin.posts.create')}}" class="slide-item">Create New Post </a></li>
                                @endif
                                @if($auth->hasPermission('app.blog.posts.self'))
								<li><a href="{{route('admin.posts.index')}}" class="slide-item">All Posts</a></li>
                                @endif
                                @if($auth->hasPermission('app.blog.categories.create'))
								<li><a href="{{route('admin.categories.create')}}" class="slide-item">Add Category</a></li>
                                @endif
                                @if($auth->hasPermission('app.blog.categories.self'))
                                <li><a href="{{route('admin.categories.index')}}" class="slide-item">All Categories</a></li>
                                @endif
							</ul>
						</li>
                        @endif


                          <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-image"></i><span class="side-menu__label">Gallery</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.galleryphotos.create')}}" class="slide-item">Upload Image</a></li>
                                <li><a href="{{route('admin.galleryphotos.index')}}" class="slide-item">All Image</a></li>
								<li><a href="{{route('admin.gallerycategories.create')}}" class="slide-item">Add Category</a></li>
							</ul>
						</li>

                        @if ($auth->hasPermission('app.content.posts.global') && $auth->hasPermission('app.content.categories.global'))
                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-database"></i><span class="side-menu__label">Genaral Content</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
                                @if($auth->hasPermission('app.content.posts.create'))
								<li><a href="{{route('admin.contentposts.create')}}" class="slide-item">Add New Content </a></li>
                                @endif
                                @if($auth->hasPermission('app.content.posts.self'))
								<li><a href="{{route('admin.contentposts.index')}}" class="slide-item">All Contents</a></li>
                                @endif
                                @if($auth->hasPermission('app.content.categories.create'))
								<li><a href="{{route('admin.contentcategories.create')}}" class="slide-item">Add Content Category</a></li>
                                @endif
                                @if($auth->hasPermission('app.content.categories.self'))
                                <li><a href="{{route('admin.contentcategories.index')}}" class="slide-item">All Categories</a></li>
                                @endif
							</ul>
						</li>
                        @endif

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-user-plus"></i><span class="side-menu__label">Team Management</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.teamposts.create')}}" class="slide-item">Add New Team </a></li>
								<li><a href="{{route('admin.teamposts.index')}}" class="slide-item">All Teams</a></li>
								<li><a href="{{route('admin.teamcategories.create')}}" class="slide-item">Add Team Category</a></li>
                                <li><a href="{{route('admin.teamcategories.index')}}" class="slide-item">All Categories</a></li>
							</ul>
						</li>

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-settings"></i><span class="side-menu__label">Service Management</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.services.create')}}" class="slide-item">Add New Service </a></li>
								<li><a href="{{route('admin.services.index')}}" class="slide-item">All Services</a></li>
								<li><a href="{{route('admin.servicecategories.create')}}" class="slide-item">Add Service Category</a></li>
                                <li><a href="{{route('admin.servicecategories.index')}}" class="slide-item">All Categories</a></li>
							</ul>
						</li>

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-briefcase"></i><span class="side-menu__label">Portfolio Management</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.portfolios.create')}}" class="slide-item">Add New Portfolio </a></li>
								<li><a href="{{route('admin.portfolios.index')}}" class="slide-item">All Portfolios</a></li>
								<li><a href="{{route('admin.portfoliocategories.create')}}" class="slide-item">Add Portfolio Category</a></li>
                                <li><a href="{{route('admin.portfoliocategories.index')}}" class="slide-item">All Categories</a></li>
							</ul>
						</li>

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-dollar-sign"></i><span class="side-menu__label">Pricing Tables</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.prices.create')}}" class="slide-item">Add New Price </a></li>
								<li><a href="{{route('admin.prices.index')}}" class="slide-item">All Prices</a></li>
								<li><a href="{{route('admin.pricecategories.create')}}" class="slide-item">Add Price Category</a></li>
                                <li><a href="{{route('admin.pricecategories.index')}}" class="slide-item">All Categories</a></li>
							</ul>
						</li>

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-dollar-sign"></i><span class="side-menu__label">Career</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.jobcategories.create')}}" class="slide-item">Add Category</a></li>
                                <li><a href="{{route('admin.jobs.create')}}" class="slide-item">Post Job</a></li>
                                <li><a href="{{route('admin.jobs.index')}}" class="slide-item">Job Management</a></li>
							</ul>
						</li>

                        <li><a href="{{route('admin.faqs.create')}}" class="side-menu__item"><i class="side-menu__icon fe fe-fast-forward"></i>FAQ</a></li>

                        <li><a href="{{route('admin.counters.create')}}" class="side-menu__item"><i class="side-menu__icon fe fe-fast-forward"></i>Counter Up</a></li>



                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-align-justify"></i><span class="side-menu__label">Sidebar</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.sidebars.create')}}" class="slide-item">Create New Sidebar </a></li>
								<li><a href="{{route('admin.sidebars.index')}}" class="slide-item">All Sidebars</a></li>
							</ul>
						</li>

						{{-- <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-bell"></i><span class="side-menu__label">Notice</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.notices.create')}}" class="slide-item">Create New Notice </a></li>
								<li><a href="{{route('admin.notices.index')}}" class="slide-item">All Notice</a></li>
							</ul>
						</li> --}}

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-align-left"></i><span class="side-menu__label">Front Menu</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.frontmenus.create')}}" class="slide-item">Create New Menu </a></li>
								<li><a href="{{route('admin.frontmenus.index')}}" class="slide-item">All Menus</a></li>
							</ul>
						</li>

						{{-- Slide + Slider--}}
						<li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-airplay"></i><span class="side-menu__label">Slider</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{ route('admin.slides.create') }}" class="slide-item"> Create Slide</a></li>
								<li><a href="{{ route('admin.slides.index') }}" class="slide-item"> All Slide</a></li>
								<li><a href="{{ route('admin.sliders.create') }}" class="slide-item"> Create Slider</a></li>
								<li><a href="{{ route('admin.sliders.index') }}" class="slide-item">All Slider</a></li>
							</ul>
						</li>

						<li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-user"></i><span class="side-menu__label">User Management</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{ route('admin.admins.create') }}" class="slide-item">Create Author </a></li>
								<li><a href="{{ route('admin.admins.index') }}" class="slide-item">All Authorlist</a></li>
                                <li><a href="{{ route('admin.users.index') }}" class="slide-item">All Userlist</a></li>
								<li><a href="{{ route('admin.roles.index') }}" class="slide-item">Role Management</a></li>
                                <li><a href="{{ route('admin.contact.index') }}" class="slide-item">Customer message List</a></li>
                                <li><a href="{{ route('admin.clients.index') }}" class="slide-item">Clients</a></li>
							</ul>
						</li>

                        <li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-settings"></i><span class="side-menu__label">Appearance Setting</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.navbar.settings')}}" class="slide-item">Navbar Setting</a></li>
                                <li><a href="{{route('admin.footer.settings')}}" class="slide-item">Footer Setting</a></li>
							</ul>
						</li>

						<li class="slide">
							<a class="side-menu__item" data-bs-toggle="slide" href="#"><i class="side-menu__icon fe fe-settings"></i><span class="side-menu__label">General Setting</span><i class="angle fa fa-angle-right"></i></a>
							<ul class="slide-menu">
								<li><a href="{{route('admin.settings')}}" class="slide-item">Site Setting</a></li>
                                <li><a href="{{route('admin.mail.settings')}}" class="slide-item">SMTP Setting</a></li>
							</ul>
						</li>


					</ul>
				</aside>
				<!--/APP-SIDEBAR-->
