@extends('layouts.master1')
@section('tittle',"Dokumen Pengetahuan")
@section('conten')

<div class="row">
	<div class="col-lg-9">
		<div class="panel panel-flat border-top-xlg border-top-primary">
			<div class="panel-heading">
				<h6 class="panel-title"><span class="text-semibold">Daftar Dokumen</span></h6>
			</div>
			
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr class="">
								<th>Kategori</th>
								<th>Judul</th>
								<th>Penulis</th>
								<th>Tahun</th>
								<th>Aksi</th>
							</tr>
						</thead>
						@foreach ($data_newdokumen as $dokumen)
						<tbody>
							<tr class="success">
								<td>{{$dokumen->kategori->nama}}</td>
								<td>{{$dokumen->judul_umum}}</td>
								<td>{{$dokumen->penulis}}</td>
								<td>{{$dokumen->tahun}}</td>
								<td>
									<a href="/lihat/{{$dokumen->id}}/dokumen" class="btn btn-primary btn-sm">Lihat</a>
								</td>
							</tr>
						</tbody>
						@endforeach
					</table>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3">
		<div class="panel panel-flat">
			<div class="panel-heading">
				<h6 class="panel-title">Pencarian<a class="heading-elements-toggle"><i class="icon-more"></i></a></h6>
			</div>

			<div class="panel-body">
				<form action="{{route('dokpeng')}}" method="GET">
					<div class="input-group content-group">
							<input type="text" class="form-control input-lg" name="cari" placeholder="By Judul Dokumen" value="{{Request::get('cari')}}">

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
				@foreach ($kategori as $item)
				<a href="{{ route('dokumen.kategori', $item->id) }}" class="list-group-item"><i class="icon-cog3"></i>  {{$item->nama}}<span class="badge badge-danger pull-right"></span></a>
				@endforeach
			</div>
		</div>



		

	</div>
</div>

@push('detail')
<script type="text/javascript" src="assets/js/core/libraries/jquery_ui/interactions.min.js"></script>
<script type="text/javascript" src="assets/js/plugins/forms/selects/select2.min.js"></script>
<script type="text/javascript" src="assets/js/pages/form_select2.js"></script>
@endpush

@endsection