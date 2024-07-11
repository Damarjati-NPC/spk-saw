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
                <form action="{{ url('sub') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Kode Kriteria</label>
                        <input type="text" name="kode"
                            class="form-control @error('kode') is-invalid @enderror"
                            value="{{ old('kode') }}" autofocus placeholder="Masukkan kode kriterianya...">
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
                            value="{{ old('desc') }}" autofocus placeholder="Masukkan range nilainya...">
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
                            value="{{ old('nilaiawal') }}" autofocus placeholder="Masukkan nilai awal...">
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
                            value="{{ old('nilaiakhir') }}" autofocus placeholder="Masukkan nilai akhir...">
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
                            value="{{ old('bobot') }}" autofocus placeholder="Masukkan nilai 1-10">
                        @error('bobot')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
            </div>
            <button type="submit" class="btn btn-success"> Save </button>

            </form>
        </div>
    </div>
</div>
</div>
@endsection