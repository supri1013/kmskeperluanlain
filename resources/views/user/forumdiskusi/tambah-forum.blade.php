@extends('layouts.master1')
@section('tittle',"Tambah Forum Diskusi")
@section('conten')
<form action="{{route('forum-simpan')}}" method="POST" class="form-horizontal">
    {{csrf_field()}}
    <div class="panel panel-flat">
        <div class="panel-heading">
            <h5 class="panel-title">Tambah Forum Diskusi</h5>
            <div class="heading-elements">
                <ul class="icons-list">
                    <li><a data-action="collapse"></a></li>
                    <li><a data-action="reload"></a></li>
                    <li><a data-action="close"></a></li>
                </ul>
            </div>
        </div>

        <div class="panel-body">
            <div class="form-group ">
                <label class="col-lg-2 control-label">Kategori</label>
                <div class="col-lg-10 {{$errors->has('jenis_id') ? ' has-error' : ''}}">
                    <select class="select select2-hidden-accessible" tabindex="-1" aria-hidden="true" name="jenis_id">
                        <option class="selected">Pilih Kategori</option>
                            @foreach ($jenis as $item)
                            <option value="{{$item->id}}">{{$item->nama}}</option>
                            @endforeach
                    </select>
                    @if ($errors->has('jenis_id'))
                    <span class="help-block">{{$errors->first('jenis_id')}}</span>
                    @endif
                </div>
            </div>

            <div class="form-group ">
                <label class="col-lg-2 control-label">Judul</label>
                <div class="col-lg-10 {{$errors->has('judul') ? ' has-error' : ''}}">
                    <input type="text" name="judul" class=" form-control">
                    @if ($errors->has('judul'))
                        <span class="help-block">{{$errors->first('judul')}}</span>
                    @endif
                </div>
            </div>

            <div class="form-group ">
                <label class="col-lg-2 control-label">Desksripsi</label>
                <div class="col-lg-10 {{$errors->has('konten') ? ' has-error' : ''}}">
                    <textarea name="konten" id=""  rows="4" class=" form-control "></textarea>
                    @if ($errors->has('konten'))
                        <span class="help-block">{{$errors->first('konten')}}</span>
                    @endif
                </div>
            </div>

            <div class="text-right">
               <a href="{{route('forum.saya')}}" class="btn btn-danger btn-sm">Batal<i class=" icon-cross2 position-right"></i></a>
                <button type="submit" class="btn btn-primary btn-sm">Simpan<i class="icon-check position-right"></i></button>
            </div>
        </div>
    </div>
</form>
@push('detail')
    <!-- Theme JS files -->
	<script type="text/javascript" src="{{asset('assets/js/plugins/forms/selects/select2.min.js')}}"></script>
	<script type="text/javascript" src="{{asset('assets/js/plugins/forms/styling/uniform.min.js')}}"></script>
	<script type="text/javascript" src="{{asset('assets/js/pages/form_layouts.js')}}"></script>
	<!-- /theme JS files -->
@endpush
@endsection