<?php

namespace App\Http\Controllers\Admin\Gallery;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Models\Gallery\Gallery;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use App\Models\Gallery\Gallerycategory;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $galleries = Gallery::latest()->paginate(10);
        return view('backend.admin.gallery.gallery_post.index',compact('galleries'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Gallerycategory::all();
        return view('backend.admin.gallery.gallery_post.form',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'image' => 'required|max:1024',
        ]);

        //get form image
        $image = $request->file('image');
        $slug = Str::slug($request->title);

        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imagename = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            $postphotoPath = public_path('uploads/gallery_photo');
            $img                     =       Image::make($image->path());
            $img->resize(900, 600)->save($postphotoPath.'/'.$imagename);

        }

        $gallery = Gallery::create([
            'gallerycategory_id' => $request->categories,
            'name' => $request->name,
            'slug' => $slug,
            'image' => $imagename,
            'desc' => $request->desc,

        ]);


        notify()->success("Photo Successfully created","Added");
        return redirect()->route('admin.galleryphotos.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gallery\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function show(Gallery $gallery)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gallery\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function edit(Gallery $galleryphoto)
    {
        $categories = Gallerycategory::all();
        return view('backend.admin.gallery.gallery_post.form',compact('galleryphoto','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Gallery\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Gallery $galleryphoto)
    {
        $this->validate($request,[
            'image' => 'max:1024',
        ]);

        //get form image
        $image = $request->file('image');
        $slug = Str::slug($request->title);

        if(isset($image))
        {
            $currentDate = Carbon::now()->toDateString();
            $imagename = $slug.'-'.$currentDate.'-'.uniqid().'.'.$image->getClientOriginalExtension();

            $postphotoPath = public_path('uploads/gallery_photo');

            $postphoto_path = public_path('uploads/gallery_photo/'.$galleryphoto->image);  // Value is not URL but directory file path
            if (file_exists($postphoto_path)) {

                @unlink($postphoto_path);

            }

           $img                     =       Image::make($image->path());
            $img->resize(900, 600)->save($postphotoPath.'/'.$imagename);

        }
        else
        {
            $imagename = $galleryphoto->image;
        }



        $galleryphoto->update([
            'name' => $request->name,
            'slug' => $slug,
            'gallerycategory_id' => $request->categories,
            'image' => $imagename,
            'desc' => $request->desc,
        ]);

        notify()->success("Photo Successfully Updated","Update");
        return redirect()->route('admin.galleryphotos.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gallery\Gallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function destroy(Gallery $galleryphoto)
    {
        $postphoto_path = public_path('uploads/gallery_photo/'.$galleryphoto->image);  // Value is not URL but directory file path
            if (file_exists($postphoto_path)) {

                @unlink($postphoto_path);

            }

        $galleryphoto->delete();

        notify()->success('Photo Deleted Successfully','Delete');
        return back();
    }
}
