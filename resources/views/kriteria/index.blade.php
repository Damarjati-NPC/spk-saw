@extends('dashboard.base')

@section('page Heading')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
    <a href="/kriteria/create" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fa-solid fa-plus"></i> Tambah</a>
</div>        
@endsection

@section('content')

@if (Session::has('status'))
<div class="alert alert-success" id="success-alert" role="alert">
    {{ session('status') }}
    <button type="button" class="close" data-dismiss="alert">x</button>
</div>
@endif
@if (Session::has('delete'))
<div class="alert alert-danger" id="success-alert" role="alert">
    {{ session('delete') }}
    <button type="button" class="close" data-dismiss="alert">x</button>
</div>
@endif

<small class="text-secondary"><span class="text-danger">*</span> Total bobot tidak boleh lebih dari 10</small>
<table class="table table-striped">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Kode</th>
                <th>Nama Kriteria</th>
                <th>Atribut</th>
                <th>Bobot</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($kriteria as $item)
            <tr>
                <td>{{ $item->kode }}</td>
                <td>{{ $item->namakriteria }}</td>
                <td>{{ $item->atribut }}</td>
                <td>{{ $item->bobot }}</td>
                <td>
                    <a class="badge bg-success" href="/sub/{{ $item->kode }}"><i class="fa-solid fa-circle-info"></i></a>
                    <a class="badge bg-warning" href="/kriteria/{{ $item->kode }}"><i class="fa-solid fa-pen-to-square"></i></a>
                    <form action="/kriteria/{{ $item->kode }}" method="post"
                        class="d-inline">
                        @method('delete')
                        @csrf
                        <button class="badge bg-danger border-0" onclick="return confirm('Are you sure you want to delete this post?')"><i class="fa-solid fa-trash"></i></button>
                    </form>  
                </td>
            </tr>              
            @endforeach
        </tbody>
      </table>
@endsection