@extends('layouts.master1')
@section('tittle',"Daftar Forum")  
@section('conten')

<div class="row">
    <div class="col-lg-9">

        @foreach ($data_list as $item)

        <div class="panel panel-flat">
            <div class="panel-body">
                <div class="content-group">
                    <h5 class="blog-title text-semibold" style="margin-top: 0; margin-bottom: 5px;">
                        <a href="#" class="text-default">{{$item->judul}}</a>
                    </h5>
                   
                </div>

                <p>{{$item->konten}}</p>
            </div>

            <div class="panel-footer panel-footer-transparent"><a class="heading-elements-toggle"><i class="icon-more"></i></a>
                <div class="heading-elements">
                    <ul class="heading-thumbnails">
                        <li>
                            <img src="{{$item->user->getGambar()}}" alt="">
                        </li>
                        
                            <li>By <a href="#">{{$item->user->name}}</a></li>
                            <li>{{$item->getCreatedAtAttribute()}}</li>
                            <li><a href="#">{{$item->komentar->count()}} comments</a></li>
                        
                    </ul>
                    <a href="/forumdiskusi/{{$item->id}}/lihatdiskusi" class="btn btn-primary btn-sm heading-text pull-right">Komentar</a>
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
                
                <form action="{{route('list')}}" method="GET">
                    <div class="input-group content-group">
                            <input type="text" class="form-control input-lg" name="cari" placeholder="By Topik Diskusi" value="{{Request::get('cari')}}">

                        <div class="input-group-btn">
                            <button type="submit" class="btn btn-primary btn-lg btn-icon"><i class="icon-search4"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title">Forum Terbaru<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
                <div class="heading-elements">
                    <a href="/forum" class="heading-text">See all →</a>
                </div>
            </div>

            <div class="panel-body">
                <ul class="media-list">
                    @foreach ($data_forum as $item)
                    <li class="media">
                        <div class="media-left"><a href="#" class="btn border-primary text-primary btn-flat btn-icon btn-rounded btn-sm"><i class="icon-spinner11"></i></a></div>
                        <div class="media-body">
                            <a href="/forumdiskusi/{{$item->id}}/lihatdiskusi">{{$item->user->name}}</a> {{$item->judul}}
                            <div class="media-annotation">{{$item->getCreatedAtAttribute()}}</div>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>

        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title">Kategori Forum<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
            </div>
        
            <div class="list-group no-border mb-5">
                @foreach ($jenis as $item)
                <a href="{{ route('jenis.forum', $item->id) }}" class="list-group-item text-primary text-bold"><i class="icon-cog3"></i> {{$item->nama}}</a>
                @endforeach
            </div>
        </div>
    </div>
</div>

@endsection