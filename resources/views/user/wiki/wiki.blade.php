@extends('layouts.master1')
@section('tittle',"Wiki")
@section('conten')


<div class="row">
    <div class="col-lg-9">
        @if (session('sukses'))
        <div class="alert alert-info alert-bordered alert-rounded">
        <button type="button" class="close" data-dismiss="alert"><span>&times;</span><span class="sr-only">Close</span></button>
        {{session('sukses')}}
        </div> 
        @endif
        @foreach ($data_newwiki as $wiki)
        <div class="panel panel-flat blog-horizontal blog-horizontal-1">
            <div class="panel-heading">
                <h5 class="panel-title text-semibold">
                    <a href="#">{{$wiki->judul}}</a>
                </h5>
            </div>
        
            <div class="panel-body">
                <div class="thumb">
                    <img src="{{$wiki->getGambar()}}" alt="" style="width: 400px">
                    <div class="caption-overflow">
                        <span>
                            <a href="blog_single.html" class="btn btn-flat border-white text-white btn-rounded btn-icon"><i class="icon-arrow-right8"></i></a>
                        </span>
                    </div>
                </div>
        
                <div class="blog-preview">
                    <p>{{$wiki->deskripsi}}
                </div>
            </div>
        
            <div class="panel-footer panel-footer-transparent">
                <div class="heading-elements">
                    <ul class="list-inline list-inline-separate heading-text text-muted">
                        <li>By <span class="label label-primary">{{$wiki->user->name}}</span><a href="#" class="text-blue"></a></li>
                        <li>{{$wiki->created_at}}</li>
                    </ul>
                        <a href="{{ route('wiki.baca', $wiki->id) }}" class="heading-text pull-right"><span class="label label-success">Lihat</span></a>
                        <a href="/wiki/{{$wiki->id}}/edit" class="heading-text pull-right"><span class="label label-warning">Edit</span> </a>
                </div>
                
            </div>
        </div>
        @endforeach
    </div>

    <div class="col-lg-3">


        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title">Pencarian<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
            </div>

            <div class="panel-body">
                <form action="{{route('wiki')}}" method="GET">
                    <div class="input-group content-group">
                            <input type="text" class="form-control input-lg" name="cari" placeholder="By Judul Artikel" value="{{Request::get('cari')}}">

                        <div class="input-group-btn">
                            <button type="submit" class="btn btn-primary btn-lg btn-icon"><i class="icon-search4"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title">Artikel Terbaru<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
                <div class="heading-elements">
                    <a href="/wiki" class="heading-text">See all →</a>
                </div>
            </div>

            <div class="panel-body">
                <ul class="media-list">
                    @foreach ($data_wiki as $item)
                    <li class="media">
                        <div class="media-left"><a href="{{ route('wiki.baca', $item->id) }}" class="btn border-primary text-primary btn-flat btn-icon btn-rounded btn-sm"><i class="icon-spinner11"></i></a></div>
                        <div class="media-body">
                            <a href="{{ route('wiki.baca', $item->id) }}">{{$item->user->name}}</a>
                            <div class="media-annotation">{{$item->getCreatedAtAttribute()}}</div>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>

        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title">Kategori Artikel<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
            </div>
        
            <div class="list-group no-border mb-5">
                @foreach ($jenis as $item)
                <a href="{{ route('jenis.wiki', $item->id) }}" class="list-group-item text-primary text-bold"><i class="icon-cog3"></i> {{$item->nama}}</a>
                @endforeach
            </div>
        </div>
    </div>
</div>

@endsection

