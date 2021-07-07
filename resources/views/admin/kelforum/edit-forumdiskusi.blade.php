@extends('layouts.master1')
@section('tittle',"Edit Data Forum Diskusi")
@section('conten')

<div class="row">
    <div class="col-md-12">

        <form action="/forumdiskusi/{{$forum->id}}/update" method="POST">
            @csrf
            <div class="panel panel-flat">
                <div class="panel-heading">
                    <h5 class="panel-title">Edit Data Forum Diskusi<a class="heading-elements-toggle"><i class="icon-more"></i></a></h5>
                    <div class="heading-elements">
                        <ul class="icons-list">
                            <li><a data-action="collapse"></a></li>
                            <li><a data-action="reload"></a></li>
                            <li><a data-action="close"></a></li>
                        </ul>
                    </div>
                </div>

                <div class="panel-body">
                    <div class="form-group {{$errors->has('jenis_id') ? ' has-error' : ''}}">
                        <div class="form-group">
                            <label>Kategori:</label>
                            <select class="select select2-hidden-accessible" tabindex="-1" aria-hidden="true" name="jenis_id">
                                    @foreach ($jenis as $item)
                                    <option value="{{$item->id}}">{{$item->nama}}</option>
                                    @endforeach
                            </select>
                        </div>
                        @if ($errors->has('jenis_id'))
                            <span class="help-block">{{$errors->first('jenis_id')}}</span>
                        @endif
                    </div>

                    <div class="form-group {{$errors->has('judul') ? ' has-error' : ''}}">
                        <label>Topik Forum Diskusi:</label>
                        <input type="text" class="form-control" name="judul" value="{{$forum->judul}}">
                        @if ($errors->has('judul'))
                            <span class="help-block">{{$errors->first('judul')}}</span>
                        @endif
                    </div>

                    <div class="form-group {{$errors->has('konten') ? ' has-error' : ''}}">
                        <label>Deskripsi Forum Diskusi:</label>
                        <textarea name="konten" id="" cols="30" rows="10" class="form-control">{{$forum->konten}}</textarea>
                        @if ($errors->has('konten'))
                            <span class="help-block">{{$errors->first('konten')}}</span>
                        @endif
                    </div>

                    <div class="text-right">
                        <a href="{{route('tampildata.forum')}}" class="btn btn-danger btn-sm"><i class=" icon-cross3"></i>Batal</a> 
                        <button type="submit" class="btn btn-primary btn-sm"><i class=" icon-checkmark3"></i>Simpan</button> 
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@push('detail')
    <!-- Theme JS files -->
	<script type="text/javascript" src="{{asset('assets/js/plugins/forms/selects/select2.min.js')}}"></script>
	<script type="text/javascript" src="{{asset('assets/js/plugins/forms/styling/uniform.min.js')}}"></script>
	<script type="text/javascript" src="{{asset('assets/js/pages/form_layouts.js')}}"></script>
	<!-- /theme JS files -->
@endpush
@endsection