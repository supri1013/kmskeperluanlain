@extends('layouts.master1')
@section('tittle',"Tambah Wiki")
@section('conten')
  
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-flat">
                    <div class="panel-heading">
                        <h6 class="panel-title">Tambah Wiki</h6>
                    </div>
                    
                    <div class="panel-body">
                        <form method="post" class="form form-horizontal" action="{{route('postwiki')}}" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="user_id" value="{{auth()->user()->id}}">    
                            <div class="form-group {{$errors->has('jenis_id') ? ' has-error' : ''}}">
                                <label>Kategori</label>
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

                            <div class="form-group {{$errors->has('judul') ? ' has-error' : ''}}">
                                <label>Judul</label>
                                <input type="text" name="judul" class="form-control"/>
                                @if ($errors->has('judul'))
                                    <span class="help-block">{{$errors->first('judul')}}</span>
                                @endif
                            </div>

                            <div class="form-group {{$errors->has('deskripsi') ? ' has-error' : ''}}">
                                <label>Deskripsi</label>
                                <textarea name="deskripsi" class="form-control"></textarea>
                                @if ($errors->has('deskripsi'))
                                    <span class="help-block">{{$errors->first('deskripsi')}}</span>
                                @endif
                            </div>

                            <div class="form-group {{$errors->has('isi_artikel') ? ' has-error' : ''}}">
                                <label>Isi Artikel</label>
                                <textarea name="isi_artikel" rows="5" cols="40" class="form-control summernote"></textarea>
                                @if ($errors->has('isi_artikel'))
                                    <span class="help-block">{{$errors->first('isi_artikel')}}</span>
                                @endif
                            </div>

                            <div class="form-group {{$errors->has('editor') ? ' has-error' : ''}}">
                                <label>Editors</label>
                                <textarea name="editor" rows="4" cols="40" class="form-control"></textarea>
                                @if ($errors->has('editor'))
                                    <span class="help-block">{{$errors->first('editor')}}</span>
                                @endif
                            </div>

                            <div class="form-group {{$errors->has('sumber') ? ' has-error' : ''}}">
                                <label>Sumber</label>
                                <textarea name="sumber" cols="40" rows="4" class="form-control"></textarea>
                                @if ($errors->has('sumber'))
                                    <span class="help-block">{{$errors->first('sumber')}}</span>
                                @endif
                            </div> 
                            
                            <div class="form-group {{$errors->has('gambar') ? ' has-error' : ''}}">
                                <label>Sampul:</label>
                               <input type="file" name="gambar" id="">
                                @if ($errors->has('gambar'))
                                    <span class="help-block">{{$errors->first('gambar')}}</span>
                                @endif
                            </div>  

                            <div class="text-right">
                                <a href="{{route('wikisaya')}}" class="btn btn-danger btn-sm">Batal<i class=" icon-cross2 position-right"></i></a>
                                 <button type="submit" class="btn btn-primary btn-sm">Simpan<i class="icon-check position-right"></i></button>
                             </div> 
                        </form> 
                    </div>
                </div>            
            </div>
        </div>
        @push('detail')
        <script type="text/javascript" src="{{asset('assets/js/plugins/editors/summernote/summernote.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('assets/js/plugins/forms/styling/uniform.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('assets/js/pages/editor_summernote.js')}}"></script>
        <script type="text/javascript" src="{{asset('assets/js/plugins/forms/selects/select2.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('assets/js/plugins/forms/styling/uniform.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('assets/js/pages/form_layouts.js')}}"></script>
        @endpush
@endsection