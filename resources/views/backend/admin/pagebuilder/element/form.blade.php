@extends('layouts.app')

@section('styles')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css" integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- FILE UPLODE CSS -->
        <link href="{{ asset('assets/plugins/fileuploads/css/fileupload.css') }}" rel="stylesheet" type="text/css"/>
		<!-- INTERNAL Fancy File Upload css -->
		<link href="{{ asset('assets/plugins/fancyuploder/fancy_fileupload.css') }}" rel="stylesheet" />
        <!-- WYSIWYG EDITOR CSS -->
        <link href="{{ asset('assets/plugins/wysiwyag/richtext.css') }}" rel="stylesheet"/>

        <!-- SUMMERNOTE CSS -->
        <link rel="stylesheet" href="{{ asset('assets/plugins/summernote/summernote-bs4.css') }}">

        <!-- INTERNAL Quill css -->
        <link href="{{ asset('assets/plugins/quill/quill.snow.css') }}" rel="stylesheet">
        <link href="{{ asset('assets/plugins/quill/quill.bubble.css') }}" rel="stylesheet">
        <!-- INTERNAL SELECT2 CSS -->
        <link href="{{ asset('assets/plugins/select2/select2.min.css') }}" rel="stylesheet"/>

		<!-- INTERNAL Jquerytransfer css-->
		<link rel="stylesheet" href="{{ asset('assets/plugins/jQuerytransfer/jquery.transfer.css') }}">
		<link rel="stylesheet" href="{{ asset('assets/plugins/jQuerytransfer/icon_font/icon_font.css') }}">


		<!-- MULTI SELECT CSS -->
		<link rel="stylesheet" href="{{ asset('assets/plugins/multipleselect/multiple-select.css') }}">

		<!--INTERNAL IntlTelInput css-->
		<link rel="stylesheet" href="{{ asset('assets/plugins/intl-tel-input-master/intlTelInput.css') }}">

		<!-- INTERNAL multi css-->
		<link rel="stylesheet" href="{{ asset('assets/plugins/multi/multi.min.css') }}">






		        <!-- FILE UPLODE CSS -->
				<link href="{{ asset('assets/plugins/fileuploads/css/fileupload.css') }}" rel="stylesheet" type="text/css"/>

				<!-- SELECT2 CSS -->
				<link href="{{ asset('assets/plugins/select2/select2.min.css') }}" rel="stylesheet"/>

				<!-- INTERNAL Fancy File Upload css -->
				<link href="{{ asset('assets/plugins/fancyuploder/fancy_fileupload.css') }}" rel="stylesheet" />

				<!--BOOTSTRAP-DATERANGEPICKER CSS-->
				<link rel="stylesheet" href="{{ asset('assets/plugins/bootstrap-daterangepicker/daterangepicker.css') }}">

				<!-- TIME PICKER CSS -->
				<link href="{{ asset('assets/plugins/time-picker/jquery.timepicker.css') }}" rel="stylesheet"/>

				<!-- INTERNAL Date Picker css -->
				<link href="{{ asset('assets/plugins/date-picker/date-picker.css') }}" rel="stylesheet" />

				<!-- INTERNAL Sumoselect css-->
				<link rel="stylesheet" href="{{ asset('assets/plugins/sumoselect/sumoselect.css') }}">

				<!-- INTERNAL Jquerytransfer css-->
				<link rel="stylesheet" href="{{ asset('assets/plugins/jQuerytransfer/jquery.transfer.css') }}">
				<link rel="stylesheet" href="{{ asset('assets/plugins/jQuerytransfer/icon_font/icon_font.css') }}">

				<!-- INTERNAL Bootstrap DatePicker css-->
				<link rel="stylesheet" href="{{ asset('assets/plugins/bootstrap-datepicker/bootstrap-datepicker.css') }}">

				<!-- MULTI SELECT CSS -->
				<link rel="stylesheet" href="{{ asset('assets/plugins/multipleselect/multiple-select.css') }}">

				<!--INTERNAL IntlTelInput css-->
				<link rel="stylesheet" href="{{ asset('assets/plugins/intl-tel-input-master/intlTelInput.css') }}">

				<!-- INTERNAL multi css-->
				<link rel="stylesheet" href="{{ asset('assets/plugins/multi/multi.min.css') }}">

@endsection

@section('content')

						<!-- PAGE-HEADER -->
						<div class="page-header">
							<div>
								<h1 class="page-title">{{ isset($element) ? 'Edit ('.$element->title.')' : 'Create '}}Element </h1>
								{{-- <ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Tables</a></li>
									<li class="breadcrumb-item active" aria-current="page">Table</li>
								</ol> --}}
							</div>
							<div class="ms-auto pageheader-btn">
								<a href="{{route('admin.element.index',$page->id)}}" class="btn btn-primary btn-icon text-white me-2">
									<span>
										{{-- <i class="fe fe-minus"></i> --}}
									</span> Back To List
								</a>
								{{-- <a href="#" class="btn btn-success btn-icon text-white">
									<span>
										<i class="fe fe-log-in"></i>
									</span> Export
								</a> --}}
							</div>
						</div>
						<!-- PAGE-HEADER END -->

                   <!-- ROW-1 OPEN -->
    <form method="POST" action="{{isset($element) ? route('admin.element.update',['id'=>$page->id,'elementId'=>$element->id]) : route('admin.element.store',$page->id)}}" enctype="multipart/form-data">
    @csrf
    @isset($element)
    @method('PUT')
    @endisset
	<div class="row">
		{{-- Left Side --}}
		<div class="col-lg-9 col-xl-9 col-md-12 col-sm-12">
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">Manage Page Section</h3>
				</div>

                <div class="card-body">
				<div class="form-group">
                    @isset($element)
                    <label class="form-label" for="type">Select Module Type</label>
					<select class="form-control form-select select2" data-bs-placeholder="Select Type" name="module_type" id="type" onChange="setModule()" >
                        <option value="">Select Module</option>
                        <option value="Custome Element" {{($element->module_type == 'Custome Element') ? 'selected' : ''}} >Custome Element</option>
						<option value="Blog Category" {{($element->module_type == 'Blog Category') ? 'selected' : ''}} >Blog Category</option>
                        <option value="Blog_Category_post" {{($element->module_type == 'Blog_Category_post') ? 'selected' : ''}} >Category Wise BlogPost</option>
						<option value="Blog Post" {{($element->module_type == 'Blog Post') ? 'selected' : ''}}>Blog Post</option>
                        <option value="Product Category" {{($element->module_type == 'Product Category') ? 'selected' : ''}} >Product Category</option>
                        <option value="Product_Category_post" {{($element->module_type == 'Product_Category_post') ? 'selected' : ''}} >Category Wise Product</option>
						<option value="Product Post" {{($element->module_type == 'Product Post') ? 'selected' : ''}}>Product Post</option>
                        <option value="General Category" {{($element->module_type == 'General Category') ? 'selected' : ''}} >General Category</option>
                        <option value="General Post" {{($element->module_type == 'General Post') ? 'selected' : ''}} >General Post</option>
                        <option value="Service Category" {{($element->module_type == 'Service Category') ? 'selected' : ''}} >Service Category</option>
                        <option value="Service Post" {{($element->module_type == 'Service Post') ? 'selected' : ''}} >Service Post</option>
                        <option value="Job Category" {{($element->module_type == 'Job Category') ? 'selected' : ''}} >Job Category</option>
                        <option value="Job_Category_post" {{($element->module_type == 'Job_Category_post') ? 'selected' : ''}} >Category Wise Job</option>
                        <option value="Job Post" {{($element->module_type == 'Job Post') ? 'selected' : ''}} >Job Post</option>
                        <option value="Portfolio Category" {{($element->module_type == 'Portfolio Category') ? 'selected' : ''}} >Portfolio Category</option>
                        <option value="Portfolio Post" {{($element->module_type == 'Portfolio Post') ? 'selected' : ''}} >Portfolio Post</option>
                        <option value="Price-Table Category" {{($element->module_type == 'Price-Table Category') ? 'selected' : ''}} >Price-Table Category</option>
                        <option value="Price-Table Post" {{($element->module_type == 'Price-Table Post') ? 'selected' : ''}} >Price-Table Post</option>
                        <option value="Client List" {{($element->module_type == 'Client List') ? 'selected' : ''}} >Client List</option>
                        <option value="Counter Up" {{($element->module_type == 'Counter Up') ? 'selected' : ''}} >Counter Up</option>
					</select>
                    @else
                    <label class="form-label" for="type">Select Module Type</label>
					<select class="form-control form-select select2" data-bs-placeholder="Select Type" name="module_type" id="type" onChange="setModule()" >
                        <option value="">Select Module</option>
                        <option value="Custome Element">Custome Element</option>
						<option value="Blog Category">Blog Category</option>
                        <option value="Blog_Category_post">Category Wise BlogPost</option>
						<option value="Blog Post">Blog Post</option>
                        <option value="Product Category">Product Category</option>
                        <option value="Product_Category_post">Category Wise Product</option>
						<option value="Product Post">Product Post</option>
                        <option value="General Category">General Category</option>
                        <option value="General Post">General Post</option>
                        <option value="Service Category">Service Category</option>
                        <option value="Service Post">Service Post</option>
                        <option value="Job Category">Job Category</option>
                        <option value="Job_Category_post">Category Wise Job</option>
                        <option value="Job Post">Job Post</option>
                        <option value="Portfolio Category">Portfolio Category</option>
                        <option value="Portfolio Post">Portfolio Post</option>
                        <option value="Price-Table Category">Price-Table Category</option>
                        <option value="Price-Table Post">Price-Table Post</option>
                        <option value="Client List">Client List</option>
                        <option value="Counter Up">Counter Up</option>
					</select>
                    @endisset
				</div>

                @isset($element)
                    <div class="form-group">
						<label class="form-label">Container</label>
						<select name="container" class="form-control form-select select2" data-bs-placeholder="Select Container">
							<option value="">Select Container Type</option>
							<option value="container-lg" {{($element->container == 'container-lg') ? 'selected' : ''}}  >Full width</option>
							<option value="container-sm" {{($element->container == 'container-sm') ? 'selected' : ''}}>Box Layout</option>
						</select>
					</div>

                    @else

					<div class="form-group">
						<label class="form-label">Container</label>
						<select name="container" class="form-control form-select select2" data-bs-placeholder="Select Container">
							<option value="">Select Page Type</option>
							<option value="container-lg">Full width</option>
							<option value="container-sm">Box Layout</option>
						</select>
					</div>
                    @endisset

                <div id="layout_type">
                    <div class="form-group">
                        @isset($element)
                        <label class="form-label" for="type">Select Layout Type</label>
                        <select class="form-control form-select select2" data-bs-placeholder="Select Type" name="layout" id="type" >
                            <option value="">Select Layout</option>
                            <option value="One Column" {{($element->layout == 'One Column') ? 'selected' : ''}} >One Column</option>
                            <option value="Two Column" {{($element->layout == 'Two Column') ? 'selected' : ''}}>Two Column</option>
                            <option value="Three Column" {{($element->layout == 'Three Column') ? 'selected' : ''}} >Three Column</option>
                            <option value="Four Column" {{($element->layout == 'Four Column') ? 'selected' : ''}} >Four Column</option>
                        </select>
                        @else
                        <label class="form-label" for="type">Select Layout Type</label>
                        <select class="form-control form-select select2" data-bs-placeholder="Select Type" name="layout" id="type" >
                            <option value="">Select Layout</option>
                            <option value="One Column">One Column</option>
                            <option value="Two Column">Two Column</option>
                            <option value="Three Column">Three Column</option>
                            <option value="Four Column">Four Column</option>
                        </select>
                        @endisset
                    </div>
                </div>


                <div class="form-group">
                    <label for="exampleInputname">Element Title</label>
                    <input type="text" class="form-control " value="{{$element->title ?? old('title')}}" name="title" id="" placeholder="Element Title">
                </div>

                <div id="post_qty">
                    <div class="form-group">
                        <label for="exampleInputname">How Many Post want to Show</label>
                        <input type="text" class="form-control " value="{{$element->post_qty ?? old('post_qty')}}" name="post_qty" id="" placeholder="enter post quantity">
                    </div>
                </div>

                <div id="portfolio_width" style="display: none;">
                    <div class="form-group">
                        <label for="portfolio_width">Portfolio image size</label>
                        <input type="text" class="form-control " value="{{$element->portfolio_width ?? old('portfolio_width')}}" name="portfolio_width" id="" placeholder="enter portfolio image width, ex: 50,60,70,80,90,100">
                    </div>
                </div>

                <div id="blog_category" style="display: none;">
						<div class="form-group row" id="category">
                            <label class="col-md-3 col-from-label">Select Category<span class="text-danger">*</span></label>
                            @isset($editcategories)
                            <div>
                                <select class="form-control" name="category_id" id="category_id" data-live-search="true">
                                    <option value="0">Select Category</option>
                                    @foreach ($editcategories as $key => $category)
                                    <option value="{{ $category->id }}" {{($element->category_id == $category->id) ? 'selected' : ''}} >{{ $category->name }} ({{$category->posts_count}})</option>
                                    @endforeach
                                </select>
                            </div>
                            @else
                            <div>
                                <select class="form-control" name="category_id" id="category_id" data-live-search="true">
                                    <option value="0">Select Category</option>
                                    @foreach ($categories as $key => $category)
                                    <option value="{{ $category->id }}">{{ $category->name }} ({{$category->posts_count}})</option>
                                    @endforeach
                                </select>
                            </div>
                            @endisset
                        </div>
				</div>


                <div id="product_category" style="display: none;">
                    <div class="form-group row" id="category">
                        <label class="col-md-3 col-from-label">Select Product Category<span class="text-danger">*</span></label>
                        @isset($product_editcategories)
                        <div>
                            <select class="form-control" name="product_category_id" id="product_category_id" data-live-search="true">
                                <option value="0">Select Category</option>
                                @foreach ($product_editcategories as $key => $category)
                                <option value="{{ $category->id }}" {{($element->product_category_id == $category->id) ? 'selected' : ''}} >{{ $category->name }} ({{$category->products_count}})</option>
                                @endforeach
                            </select>
                        </div>
                        @else
                        <div>
                            <select class="form-control" name="product_category_id" id="product_category_id" data-live-search="true">
                                <option value="0">Select Category</option>
                                @foreach ($product_categories as $key => $category)
                                <option value="{{ $category->id }}">{{ $category->name }} ({{$category->products_count}})</option>
                                @endforeach
                            </select>
                        </div>
                        @endisset
                    </div>
                </div>


                <div id="job_category" style="display: none;">
                    <div class="form-group row" id="category">
                        <label class="col-md-3 col-from-label">Select Job Category<span class="text-danger">*</span></label>
                        @isset($job_editcategories)
                        <div>
                            <select class="form-control" name="job_category_id" id="job_category_id" data-live-search="true">
                                <option value="0">Select Category</option>
                                @foreach ($job_editcategories as $key => $category)
                                <option value="{{ $category->id }}" {{($element->product_category_id == $category->id) ? 'selected' : ''}} >{{ $category->name }} ({{$category->products_count}})</option>
                                @endforeach
                            </select>
                        </div>
                        @else
                        <div>
                            <select class="form-control" name="job_category_id" id="job_category_id" data-live-search="true">
                                <option value="0">Select Category</option>
                                @foreach ($job_categories as $key => $category)
                                <option value="{{ $category->id }}">{{ $category->name }} ({{$category->products_count}})</option>
                                @endforeach
                            </select>
                        </div>
                        @endisset
                    </div>
                </div>



            <div id="img_style" style="display: none;">
                <div class="card-header">
					<h3 class="card-title">For Custom Elements: </h3>
				</div>
            </br>

                <div class="form-group">
                    <label for="exampleInputContent">Description</label>
                    <div class="ql-wrapper ql-wrapper-demo bg-light">
                        <textarea name="body" class="my-editor form-control" id="ckeditor" style="height: 200px;" cols="30" rows="10">{!!$element->body ?? old('body')!!}</textarea>
                    </div>
                </div>

            </div>







                {{-- @isset($element)
                <label class="form-label" for="type">Select Image Margin Type</label>
                <select class="form-control form-select select2" data-bs-placeholder="Select Type" name="img_margin" id="type" onChange="setMargin()">
                    <option value="">Select Left or Right Margin</option>
                    <option value="Left Margin" {{($element->img_margin == 'Left Margin') ? 'selected' : ''}} >Left Margin</option>
                    <option value="Right Margin" {{($element->img_margin == 'Right Margin') ? 'selected' : ''}}>Right Margin</option>
                </select>
                @else
                <label class="form-label" for="type">Select Image Margin Type</label>
                <select class="form-control form-select select2" data-bs-placeholder="Select Type" name="img_margin" id="type" onChange="setMargin()">
                    <option value="">Select Left or Right Margin</option>
                    <option value="Left Margin">Left Margin</option>
                    <option value="Right Margin">Right Margin</option>
                </select>
                @endisset

                <div id="img_margin" style="display: none;">
					<div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputname">Margin Amount</label>
                            <input type="text" class="form-control " value="{{$element->margin_amt ?? old('margin_amt')}}" name="margin_amt" id="" placeholder="ex: 10px,20px">
                        </div>
					</div>
				</div>


                @isset($element)
                <label class="form-label" for="type">Select Image Top-Margin Type</label>
                <select class="form-control form-select select2" data-bs-placeholder="Select Type" name="img_topmargin" id="type"  onChange="setTopMargin()">
                    <option value="">Select Top or Bottom Margin</option>
                    <option value="Top Margin" {{($element->img_topmargin == 'Top Margin') ? 'selected' : ''}} >Top Margin</option>
                    <option value="Bottom Margin" {{($element->img_topmargin == 'Bottom Margin') ? 'selected' : ''}}>Bottom Margin</option>
                </select>
                @else
                <label class="form-label" for="type">Select Image Top-Margin Type</label>
                <select class="form-control form-select select2" data-bs-placeholder="Select Type" name="img_topmargin" id="type" onChange="setTopMargin()">
                    <option value="">Select Top or Bottom Margin</option>
                    <option value="Top Margin">Top Margin</option>
                    <option value="Bottom Margin">Bottom Margin</option>
                </select>
                @endisset

                <div id="img_topmargin" style="display: none;">
					<div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputname">Top-Margin Amount</label>
                            <input type="text" class="form-control " value="{{$element->topmargin_amt ?? old('topmargin_amt')}}" name="topmargin_amt" id="" placeholder="ex: 10px,20px">
                        </div>
					</div>
				</div> --}}






                </div>


				<div class="card-footer text-end">
					<button type="submit" class="btn btn-success mt-1">
                        @isset($element)
                        <i class="fas fa-arrow-circle-up"></i>
                        Update
                        @else
                        <i class="fe fe-plus"></i>
                        Create
                        @endisset
                    </button>
					<a href="{{route('admin.element.index',$page->id)}}" class="btn btn-danger mt-1">Cancel</a>
				</div>
			</div>
		</div>

        <div class="col-lg-3 col-xl-3 col-md-12 col-sm-12" style="float: left">

			<div class="card">
				<div class="card-header">
					<h3 class="card-title">Create Page</h3>
				</div>
				<div class="card-body">

					@isset($element)
					<div class="form-group">
						<div class="form-label">Status</div>
						<label class="custom-switch">
							<input type="checkbox" name="status" {{$element->status == true ? 'checked' : ''}} class="custom-switch-input ">
							<span class="custom-switch-indicator"></span>
						</label>
					</div>

                    @else

                    <div class="form-group">
						<div class="form-label">Status</div>
						<label class="custom-switch">
							<input type="checkbox" name="status" class="custom-switch-input ">
							<span class="custom-switch-indicator"></span>
						</label>
					</div>

                    @endisset

                    @isset($element)
					<div class="form-group">
						<div class="form-label">Title Show</div>
						<label class="custom-switch">
							<input type="checkbox" name="title_show" {{$element->title_show == true ? 'checked' : ''}} class="custom-switch-input ">
							<span class="custom-switch-indicator"></span>
						</label>
					</div>

                    @else

                    <div class="form-group">
						<div class="form-label">Title Show</div>
						<label class="custom-switch">
							<input type="checkbox" name="title_show" class="custom-switch-input ">
							<span class="custom-switch-indicator"></span>
						</label>
					</div>

                    @endisset

                    <div class="form-group">
                        <label for="exampleInputname">Title Color</label>
                        <input type="text" class="form-control " value="{{$element->title_color ?? old('title_color')}}" name="title_color" id="" placeholder="ex: #fff">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputname">Margin Top</label>
                        <input type="text" class="form-control " value="{{$element->margin_top ?? old('margin_top')}}" name="margin_top" id="" placeholder="ex: 50px, 100px,200px">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputname">Margin Bottom</label>
                        <input type="text" class="form-control " value="{{$element->margin_bottom ?? old('margin_bottom')}}" name="margin_bottom" id="" placeholder="ex: 50px, 100px,200px">
                    </div>

                    <div id="img_galleryimg" style="display: none;">
                        <div class="form-group">
                            <label class="form-label">Feature Image</label>
                            <!-- <input id="demo" type="file" name="image" accept=".jpg, .png, image/jpeg, image/png" multiple="" class="ff_fileupload_hidden"> -->
                            <input type="file" class="dropify form-control" data-default-file="{{ isset($element) ? asset('uploads/elementphoto/'.$element->image) : '' }}" name="image">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputname">Image Width</label>
                            <input type="text" class="form-control " value="{{$element->img_width ?? old('img_width')}}" name="img_width" id="" placeholder="ex: 100,200">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputname">Image Height</label>
                            <input type="text" class="form-control " value="{{$element->img_height ?? old('img_height')}}" name="img_height" id="" placeholder="ex: 100,200">
                        </div>

                        <div class="form-group">
                            <label class="form-label">Gallery Image</label>
                            <input type="file" class="dropify form-control" data-default-file="{{ isset($element) ? asset('uploads/elementgalleryphoto/'.$element->galleryimg) : '' }}" multiple name="galleryimg[]">
                        </div>
                    </div>




				</div>

			</div>
		</div>


	</div>
    </form>
	<!-- ROW-1 CLOSED -->
@endsection('content')

@section('scripts')

<script src="//cdn.ckeditor.com/4.17.1/full/ckeditor.js"></script>

<script>
	window.onload = function () {
		CKEDITOR.replace('ckeditor', {
	        filebrowserBrowseUrl: filemanager.ckBrowseUrl,
	    });
	}
</script>

<script>
	function setModule()
	{
		if($('select[name="module_type"]').val() === 'Custome Element')
		{
			$('#img_style').show();
            $('#img_galleryimg').show();
            $('#layout_type').hide();
            $('#post_qty').hide();
            $('#blog_category').hide();
            $('#portfolio_width').hide();
		}
        else if($('select[name="module_type"]').val() === 'Blog_Category_post')
        {
            $('#blog_category').show();
            $('#portfolio_width').show();
            $('#product_category').hide();
            $('#job_category').hide();
            $('#img_style').hide();
        }
        else if($('select[name="module_type"]').val() === 'Product_Category_post')
        {
            $('#blog_category').hide();
            $('#product_category').show();
            $('#job_category').hide();
            $('#img_style').hide();
        }
        else if($('select[name="module_type"]').val() === 'Job_Category_post')
        {
            $('#blog_category').hide();
            $('#product_category').hide();
            $('#job_category').show();
            $('#img_style').hide();
        }
        else
        {
            $('#img_style').hide();
            $('#img_galleryimg').hide();
            $('#product_category').hide();
            $('#job_category').hide();
            $('#blog_category').hide();
            $('#portfolio_width').show();
        }
	}
	setModule();
</script>

<script>
    $(document).ready(function() {
        $("input[id$='test1']").click(function() {
            var link = $(this).val();

            $("div.background_color").show();
            $("div.background_img").hide();
        });

        $("input[id$='test2']").click(function() {
            var link = $(this).val();

            $("div.background_color").hide();
            $("div.background_img").show();
        });
    });
</script>


<script>
	function setMargin()
	{
		if($('select[name="img_margin"]').val() === 'Left Margin')
		{
			$('#img_margin').show();
		}
		else if($('select[name="img_margin"]').val() === 'Right Margin')
		{
			$('#img_margin').show();
		}
	}
	setWidget();

    function setTopMargin()
	{
		if($('select[name="img_topmargin"]').val() === 'Top Margin')
		{
			$('#img_topmargin').show();
		}
		else if($('select[name="img_topmargin"]').val() === 'Bottom Margin')
		{
			$('#img_topmargin').show();
		}
	}
	setWidget();

</script>

<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<script>
	window.onload = function () {
		CKEDITOR.replace('ckeditor', {
	        filebrowserBrowseUrl: filemanager.ckBrowseUrl,
	    });
	}
</script>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js" integrity="sha512-8QFTrG0oeOiyWo/VM9Y8kgxdlCryqhIxVeRpWSezdRRAvarxVtwLnGroJgnVW9/XBRduxO/z1GblzPrMQoeuew==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


        <!-- CHARTJS JS -->
        <script src="{{ asset('assets/plugins/chart/Chart.bundle.js')}}"></script>
		<script src="{{ asset('assets/plugins/chart/utils.js')}}"></script>

        <!-- INTERNAL SELECT2 JS -->
        <script src="{{ asset('assets/plugins/select2/select2.full.min.js') }}"></script>
		<script src="{{ asset('assets/js/select2.js') }}"></script>
		<!-- FILE UPLOADES JS -->
		<script src="{{ asset('assets/plugins/fileuploads/js/fileupload.js') }}"></script>
		<script src="{{ asset('assets/plugins/fileuploads/js/file-upload.js') }}"></script>

		<!-- INTERNAL File-Uploads Js-->
		<script src="{{ asset('assets/plugins/fancyuploder/jquery.ui.widget.js') }}"></script>
        <script src="{{ asset('assets/plugins/fancyuploder/jquery.fileupload.js') }}"></script>
        <script src="{{ asset('assets/plugins/fancyuploder/jquery.iframe-transport.js') }}"></script>
        <script src="{{ asset('assets/plugins/fancyuploder/jquery.fancy-fileupload.js') }}"></script>
        <script src="{{ asset('assets/plugins/fancyuploder/fancy-uploader.js') }}"></script>

		<!-- WYSIWYG Editor JS -->
		<script src="{{ asset('assets/plugins/wysiwyag/jquery.richtext.js') }}"></script>
		<script src="{{ asset('assets/plugins/wysiwyag/wysiwyag.js') }}"></script>

		<!-- INTERNAL multi js-->
		<script src="{{ asset('assets/plugins/multi/multi.min.js') }}"></script>

				<!-- MULTI SELECT JS-->
				<script src="{{ asset('assets/plugins/multipleselect/multiple-select.js') }}"></script>
				<script src="{{ asset('assets/plugins/multipleselect/multi-select.js') }}"></script>

						<!-- FORMELEMENTS JS -->
		<script src="{{ asset('assets/js/formelementadvnced.js') }}"></script>
		<script src="{{ asset('assets/js/form-elements.js') }}"></script>


		<!-- INTERNAL jquery transfer js-->
		<script src="{{ asset('assets/plugins/jQuerytransfer/jquery.transfer.js') }}"></script>

		<!-- SUMMERNOTE JS -->
		<script src="{{ asset('assets/plugins/summernote/summernote-bs4.js') }}"></script>

		<!-- FORMEDITOR JS -->
		<script src="{{ asset('assets/plugins/quill/quill.min.js') }}"></script>
		<script src="{{ asset('assets/js/form-editor2.js') }}"></script>

@endsection
