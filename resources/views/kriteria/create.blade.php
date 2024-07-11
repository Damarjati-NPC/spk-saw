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
                <form action="{{ url('kriteria') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label>Kode Kriteria</label>
                        <input type="text" name="kode"
                            class="form-control @error('kode') is-invalid @enderror"
                            value="{{ old('kode') }}" autofocus placeholder="Masukkan kode kriteria...">
                        @error('kode')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="form-group ">
                        <label>Nama Kriteria</label>
                        <input type="text" name="namakriteria"
                            class="form-control @error('namakriteria') is-invalid @enderror"
                            value="{{ old('namakriteria') }}" autofocus placeholder="Masukkan nama kriteria...">
                        @error('namakriteria')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <div>
                                    <label for="select" class=" form-control-label ">Atribut</label>
                                    <select name="atribut" class="form-control" autofocus>
                                        <option selected>---Pilih---</option>
                                        <option value="Benefit">Benefit</option>
                                        <option value="Cost">Cost</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <label class=" form-control-label">Bobot</label>
                            <input type="text" name="bobot"
                                class="form-control @error('bobot') is-invalid @enderror"
                                value="{{ old('bobot') }}" autofocus placeholder="Masukkan nilai bobot dari 1-20...">
                            @error('bobot')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>
                    </div>
            </div>
            <button type="submit" class="btn btn-success"> Save </button>

            </form>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
</div>
@endsection