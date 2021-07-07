@extends('layouts.master1')
@section('tittle',"Isu Permasalahan")
@section('conten')
	
<div class="row">
	<div class="col-lg-9">
		<div class="panel panel-flat border-top-xlg border-top-primary">
			<div class="panel-heading">
				<h6 class="panel-title"><span class="text-semibold">Daftar Isu</span></h6>
			</div>
			
			<div class="panel-body">
				<div class="table-responsive ">
					<table class="table">
						<thead>
							<tr class="">
								<th>Kategori</th>
								<th>Bagian Rusak</th>
								<th>Permasalahan</th>
								<th>Aksi</th>
							</tr>
						</thead>
						@foreach ($data_newisu as $isu)
						<tbody>
							<tr class="success">
								<td>{{$isu->jenis->nama}}</td>
								<td>{{$isu->namaob_rusak}}</td>
								<td>{{$isu->nama_permasalahan}}</td>
								<td>
									<a href="/isu/lihat/{{$isu->id}}" class="btn btn-primary btn-sm">Lihat</a>
									
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
				<form action="{{route('helpdesk')}}" method="GET">
					<div class="input-group content-group">
							<input type="text" class="form-control input-lg" name="cari" placeholder="By permasalahan" value="{{Request::get('cari')}}">

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
				<a href="{{ route('helpdesk.jenis', $item->id) }}" class="list-group-item text-primary text-bold"><i class="icon-cog3"></i> {{$item->nama}}</a>
				@endforeach
			</div>
		</div>
	</div>
</div>
@endsection