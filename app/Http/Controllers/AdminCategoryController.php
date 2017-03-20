<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AdminCategory;

class AdminCategoryController extends Controller
{
    //
     public function index(){
     	$category = AdminCategory::all();
    	return view('/admin/category/index',['category'=>$category]);
    }
    public function add(){
    	return view('/admin/category/add');
    }

    public function store(Request $request){
    	$this->validate($request,
            [
                'title_cate'=>'required|min:3|max:100'
            ],
            [
                'title_cate.required'=>'bạn chưa nhập title_cate',
                'title_cate.min'=>'tên thể loại phải có độ dài từ 3 ký tự trở lên',
                'title_cate.max'=>'tên thể loại phải có độ dài quá 100 ký tự',
            ]
            );
            $category = new AdminCategory;
            // $orderer->user_id = Auth::user()->id;
            $category->id = $request->id;
            $category->title_cate = $request->title_cate;
            $category->slug = changtitle($request->slug);

            $category->save();
            return redirect('/admin/category/')-> with('success', 'Add '.$category -> title_cate.' success');
    }

    public function edit($id){
    	$edit = AdminCategory::find($id);
    	return view('admin/category/edit', ['edit'=>$edit]);
    }
    public function update(Request $request,$id){
        $category = AdminCategory::find($id);
    	$this->validate($request,
            [
                'title_cate'=>'required|min:3|max:100'
            ],
            [
                'title_cate.required'=>'bạn chưa nhập title_cate',
                'title_cate.min'=>'tên thể loại phải có độ dài từ 3 ký tự trở lên',
                'title_cate.max'=>'tên thể loại phải có độ dài quá 100 ký tự',
            ]
            );
            // $orderer->user_id = Auth::user()->id;
            $category->id = $request->id;
            $category->title_cate = $request->title_cate;
            $category->slug = changtitle($request->slug);

            $category->save();
            return redirect('/admin/category/')-> with('success', 'Edit '.$category -> title_cate.' success');
    }

    public function delete($id){
    	$delete = AdminCategory::find($id);
    	$delete->delete();
    	return redirect('/admin/category/')-> with('success', 'Delete '.$delete -> title_cate.' success');
    }
}
