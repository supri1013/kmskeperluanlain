@extends('layouts.master1')
@section('tittle',"FAQ")
@section('conten')

<div class="row">
    <div class="col-lg-9">
 
        @foreach ($data_newfaq as $faq)
        <div class="">
            <div class="panel panel-white">
                <div class="panel-heading">
                    <h6 class="panel-title">
                        <a>
                            <i class="icon-help position-left text-orange"></i>{{$faq->pertanyaan}}
                            <div class="panel-body" style="text-align: justify">
                             {{$faq->jawaban}}
                            </div>
                        </a>
                    </h6>
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
                
                <form action="{{route('faq')}}" method="GET">
                    <div class="input-group content-group">
                        
                        <input type="text" class="form-control input-lg" placeholder="By Pertanyaan" name="cari" value="{{Request::get('cari')}}">
                        <div class="input-group-btn">
                            <button type="submit" class="btn btn-primary btn-lg btn-icon"><i class="icon-search4"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>


        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title">Kategori<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
            </div>
        
            <div class="list-group no-border mb-5">
                @foreach ($jenis as $item)
                <a href="{{ route('faq.jenis', $item->id) }}" class="list-group-item text-primary text-bold"><i class="icon-cog3"></i> {{$item->nama}}</a>
                @endforeach
            </div>
        </div>
    </div>
</div>

@endsection