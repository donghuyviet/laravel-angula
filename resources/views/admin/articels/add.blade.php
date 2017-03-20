@extends('layouts.template')

@section('content')
    <div class="row">
        <div class="col-md-2">
            @include('sidebar.index')
        </div>
        <div class="col-md-10">
            <div class="box">
                <div class="box-header">
                    form
                </div>
                <div class="box-content">
                    <div class="text-center"><h2>add articles</h2></div>
                    @if(count($errors)>0)
                        <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            @foreach($errors->all() as $err)
                                {{$err}} </br>
                            @endforeach
                        </div>
                    @endif
                    @if(Session('success'))
                        <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            {{session('success')}}
                        </div>
                    @endif
                    <form class="form-horizontal" method="POST" action="{{ url('/admin/articels/store') }}" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Title</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="idtitle" placeholder="Tiêu đề bài biết" name="title">
                            </div>                            
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Slug</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="idtitle" placeholder="Slug: slug-bai-viet" name="slug">
                            </div>                            
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Category</label>
                            <div class="col-sm-6">
                                <select class="form-control" name="AdminCategory" id="Theloai">
                                    <option value="">---select---</option>
                                    @foreach($cate as $tl)
                                    <option value="{{$tl->id}}">{{$tl->title_cate}}</option>
                                    @endforeach
                                </select>
                            </div>                            
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Desc-meta</label>
                            <div class="col-sm-6">
                                <textarea class="form-control ckeditor" name="desc" id="editor1" ></textarea>
                            </div>                            
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Description</label>
                            <div class="col-sm-6">
                                <textarea class="form-control ckeditor" name="description" id="editor1" ></textarea>
                            </div>                            
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Status</label>
                            <div class="col-sm-6">
                                <label>
                                    <input type="radio" name="status" id="optionsRadios1" value="0" checked>
                                    ẩn
                                </label>
                                <label>
                                    <input type="radio" name="status" id="optionsRadios2" value="1">
                                    hiện
                                </label>
                            </div>                            
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">Save</button>
                                <button type="submit" class="btn btn-default">cancel</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>

        </div>
        <div class="clearfix"></div>
    </div>

<!-- <link rel="stylesheet" type="text/css" href="/{{config('app.source')}}/css/search.css"> -->
<script src="/{{ config('app.source') }}/admin/ckeditor/ckeditor.js"></script>
@endsection


