@extends('dashboard.base')

@section('page Heading')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
    <a href="/penilaian/create" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
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

<div class="card-body table-responsive">
    <table id="example" class="table table-stripped">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Mahasiswa</th>
                <th>Kelas</th>
                @foreach ($kriteria as $item)
                    <th>{{ $item->namakriteria }}</th>
                @endforeach
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($penilaian as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    @foreach ($detail as $data)
                        @if ($item->nisn == $data->id_alternatif)
                            <td>{{ $data->nama }}</td>
                            <td>{{ $data->kelas }}</td>
                        @break;
                    @endif
                @endforeach
                @foreach ($detail as $data)
                    @if ($item->nisn == $data->id_alternatif)
                        <td>{{ $data->nilai }}</td>
                    @endif
                @endforeach
                @foreach ($detail as $data)
                    @if ($item->nisn == $data->id_alternatif)
                        <td>
                            <a class="badge bg-warning" href="/penilaian/{{ $data->id_alternatif }}"><i class="fa-solid fa-pen-to-square"></i></a>
                            <form action="/penilaian/{{ $data->id_alternatif }}" method="post"
                                class="d-inline">
                                @method('delete')
                                @csrf
                                <button class="badge bg-danger border-0" onclick="return confirm('Are you sure you want to delete this post?')"><i class="fa-solid fa-trash"></i></button>
                            </form>  
                        </td>
                    @break;
                @endif
            @endforeach
        </tr>
    @endforeach
</tbody>
</table>
</div>
</div>
</div>    
@endsection