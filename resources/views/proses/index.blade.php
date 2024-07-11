@extends('dashboard.base')

@section('page Heading')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
</div>    
@endsection

@section('content')
            <div class="card-body table-responsive">
                <table id="example" class="table table-stripped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Mahasiswa</th>
                            @foreach ($kriteria as $item)
                                <th>{{ $item->namakriteria }}</th>
                            @endforeach
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($headermatrik as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                @foreach ($detailmatrik as $data)
                                    @if ($item->id_alternatif == $data->id_alternatif)
                                        <td>{{ $data->nama }}</td>
                                    @break;
                                @endif
                            @endforeach
                            @foreach ($detailmatrik as $data)
                                @if ($item->id_alternatif == $data->id_alternatif)
                                    <td>{{ $data->bobot }}</td>
                                @endif
                            @endforeach

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="animated fadeIn">
<di class="content mt-3">
    <div class="card">
        <div class="card-header">
            <div class="pull-left">
                <strong> NILAI PREFERENSI</strong>
            </div>
        </div>
        {{-- isi tabel --}}
        <div class="card-body table-responsive">
            <table id="example" class="table table-stripped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Mahasiswa</th>
                        @foreach ($kriteria as $item)
                            <th>{{ $item->namakriteria }}</th>
                        @endforeach

                    </tr>
                </thead>
                <tbody>
                    @foreach ($headerreferensi as $item)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            @foreach ($detailreferensi as $data)
                                @if ($item->id_alternatif == $data->id_alternatif)
                                    <td>{{ $data->nama }}</td>
                                @break;
                            @endif
                        @endforeach
                        @foreach ($detailreferensi as $data)
                            @if ($item->id_alternatif == $data->id_alternatif)
                                <td>{{ $data->bobot }}</td>
                            @endif
                        @endforeach

                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
</div>
<div class="animated fadeIn mt-3">
<di class="content mt-3">
<div class="card">
    <div class="card-header">
        <div class="pull-left">
            <strong> PRANKINGAN</strong>
        </div>
    </div>
    {{-- isi tabel --}}
    <div class="card-body table-responsive">
        <table id="example" class="table table-stripped">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Kelas</th>
                    <th>Total</th>
                    <th>Ranking</th>


                </tr>
            </thead>
            <tbody>
                @foreach (collect($headerranking)->sortByDesc('bobot') as $item)
                    <tr>
                        <td>{{ $item->nama }}</td>
                        <td>{{ $item->kelas }}</td>
                        <td>{{ $item->bobot }}</td>
                        <td>{{ $loop->iteration }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <h3 class="text-primary"><center>Jadi Mahasiswa terbaik adalah {{ collect($headerranking)->sortByDesc('bobot')->first()->nama }}</center></h3>
</div>
</div>
@endsection