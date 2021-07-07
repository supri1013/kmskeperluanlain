@extends('layouts.master1')
@section('tittle',"Lihat Dokumen")
@section('conten')

    <div class="col-md-12">
        <div class="panel panel-flat">
            <div class="panel-heading">
                <h6 class="panel-title">Lihat Dokumen<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
                <div class="heading-elements">
                    <ul class="icons-list">
                        <li><a data-action="collapse"></a></li>
                        <li><a data-action="reload"></a></li>
                        <li><a data-action="close"></a></li>
                    </ul>
                </div>
            </div>

            <div class="panel-body">
                <div class="tabbable">
                    <ul class="nav nav-tabs nav-tabs-highlight">
                        <li class="active"><a href="#basic-tab1" data-toggle="tab" aria-expanded="false">Isi Dokumen</a></li>
                        <li class=""><a href="#basic-tab2" data-toggle="tab" aria-expanded="true">Data Meta</a></li>
                        
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active" id="basic-tab1">
                            <iframe src="{{url('/assets/data/dokumen/'. $data->file)}}" frameborder="1" style="width: 100%; height: 900px;"></iframe>
                        </div>

                        <div class="tab-pane " id="basic-tab2">
                            <div class="panel-body">

                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Judul:</label>
                                        <textarea name="abstrak" rows="4" class="form-control">{{$data->judul_umum}}</textarea>
                                    </div>

                                    <div class="form-group">
                                        <label>Judul Khusus:</label>
                                        <input type="text" class="form-control" value="{{$data->judul_khusus}}">
                                    </div>
                                    <div class="form-group">
                                        <label>Abstrak:</label>
                                        <textarea name="abstrak" id="" cols="30" rows="10" class="form-control">{{$data->abstrak}}</textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Tahun:</label>
                                        <input type="text" class="form-control" value="{{$data->tahun}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Volume:</label>
                                        <input type="text" class="form-control" value="{{$data->volume}}">
                                    </div>
                               
                                    <div class="form-group">
                                        <label>Isu:</label>
                                        <input type="text" class="form-control" value="{{$data->isu}}">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Halaman:</label>
                                        <input type="text" class="form-control" value="{{$data->halaman}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Kata Kunci:</label>
                                        <input type="text" class="form-control" value="{{$data->kata_kunci}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Url:</label>
                                        <input type="text" class="form-control" value="{{$data->url}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>ISBN/DOI/ISSN:</label>
                                        <input type="text" class="form-control" value="{{$data->nomor}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Penulis:</label>
                                        <input type="text" class="form-control" value="{{$data->penulis}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Publikasi:</label>
                                        <input type="text" class="form-control" value="{{$data->publikasi}}">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Kota:</label>
                                        <input type="text" class="form-control" value="{{$data->kota}}">
                                    </div>

                                    <div class="form-group">
                                        <label>Edisi:</label>
                                        <input type="text" class="form-control" value="{{$data->edisi}}">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Editor:</label>
                                        <input type="text" class="form-control" value="{{$data->editor}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Publiser:</label>
                                        <input type="text" class="form-control" value="{{$data->publiser}}">
                                    </div>
                                    
                            
                                    <div class="form-group">
                                        <label>Chapter:</label>
                                        <input type="text" class="form-control" value="{{$data->chapter}}">
                                    </div>
                                    <div class="form-group">
                                        <label>Counsel:</label>
                                        <input type="text" class="form-control" value="{{$data->counsel}}">
                                    </div>
                                  
                                    <div class="form-group">
                                        <label>Putusan:</label>
                                        <input type="text" class="form-control" value="{{$data->tanggal_putusan}}">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Seri:</label>
                                        <input type="text" class="form-control" value="{{$data->nomor_seri}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Departemen:</label>
                                        <input type="text" class="form-control" value="{{$data->departemen}}">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Universitas:</label>
                                        <input type="text" class="form-control" value="{{$data->universitas}}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label>Tipe:</label>
                                        <input type="text" class="form-control" value="{{$data->tipe}}">
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Institusi:</label>
                                        <input type="text" class="form-control" value="{{$data->institusi}}">
                                    </div>
                                    
                
                                     <div class="form-group">
                                        <a href="/dokumen" class="btn btn-danger btn-sm"><i class="icon-arrow-left8"></i>Kembali</a>
                                    </div>
                                </div>

                                
                            </div>
                        </div>

                       
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection