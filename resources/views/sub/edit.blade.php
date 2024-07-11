@extends('dashboard.base')

@section('page Heading')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
</div>    
@endsection

@section('content')
<div class="card-body">
    <div class="row justify-content-center">
        <div class="col-8">
            <div class"col-md-4 offset-md-4">
                <form action="/sub/{{ $subs->id }}" method="post">
                    @method('put')
                    @csrf
                    <div class="form-group">
                        <label>Kode Kriteria</label>
                        <input type="text" name="kode"
                            class="form-control @error('kode') is-invalid @enderror"
                            value="{{ $subs->kode_id }}" autofocus>
                        @error('kode')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group ">
                        <label>Penjelasan</label>
                        <input type="text" name="desc"
                            class="form-control @error('desc') is-invalid @enderror"
                            value="{{ $subs->desc }}" autofocus>
                        @error('desc')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group ">
                        <label>Nilai Awal</label>
                        <input type="text" name="nilaiawal"
                            class="form-control @error('nilaiawal') is-invalid @enderror"
                            value="{{ $subs->nilaiawal }}" autofocus>
                        @error('nilaiawal')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group ">
                        <label>Nilai Akhir</label>
                        <input type="text" name="nilaiakhir"
                            class="form-control @error('nilaiakhir') is-invalid @enderror"
                            value="{{ $subs->nilaiakhir }}" autofocus>
                        @error('nilaiakhir')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group ">
                        <label>Bobot</label>
                        <input type="text" name="bobot"
                            class="form-control @error('bobot') is-invalid @enderror"
                            value="{{ $subs->bobot }}" autofocus>
                        @error('bobot')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
            </div>
            <button type="submit" class="btn btn-success"> Update </button>

            </form>
        </div>
    </div>
</div>
</div>
@endsection