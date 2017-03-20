@extends('layouts.template')

@section('content')
    <div class="row">
        <div class="col-md-2">
            @include('sidebar.index')
        </div>
        <div class="col-md-10">
            <div class="box">
                <div class="box-header">
                    Manager Category
                    <a class="btn btn-default" href="/admin/articels/add">Add Articels</a>
                </div>
                <div class="box-content">
                    <h2>Manager Category</h2>
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
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                        <tr>
                            <th>#</th>
                            <th>Title</th>
                            <th>Slug</th>
                            <th>Desc</th>
                            <th>Description</th>
                            <th>Cate</th>
                            <th>Create date</th>
                            <th>Update date</th>
                            <th></th>
                        </tr>
                        @foreach($articel as $art)
                        <tr>
                            <td>{{$art->id}}</td>
                            <td>{{str_limit($art->title, 100)}}</td>
                            <td>{{$art->slug}}</td>
                            <td>{{str_limit($art->desc, 100)}}</td>
                            <td>{{str_limit($art->description, 100)}}</td>
                            <td>{{$art->title_cate}}</td>
                            <td>{{$art->created_at}}</td>
                            <td>{{$art->updated_at}}</td>
                            <td>
                                <a class="btn btn-default" href="/admin/articels/edit/{{$art->id}}" >Edit</a>
                                <a class="btn btn-danger" href="/admin/articels/delete/{{$art->id}}" onclick="confirm()">Del</a>
                            </td>
                        </tr>
                        @endforeach
                    </table>
                    </div>
                    <div class="text-right">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                </div>
            </div>

        </div>
        <div class="clearfix"></div>
    </div>
    <script>
        function confirm(){

            $.confirm({
                title: 'Confirm!',
                content: 'Are you sure',
                buttons: {
                    confirm: function () {
                        $.alert('Confirmed!');
                    },
                    cancel: function () {
                        $.alert('Canceled!');
                    }

                }
            });
        }
    </script>
@endsection


