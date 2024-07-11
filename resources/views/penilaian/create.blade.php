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
                <form action="{{ url('penilaian') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="select" class=" form-control-label ">Nama Mahasiswa</label>
                        <select name="name" class="form-control" autofocus>
                            <option value="">---Pilih---</option>
                            @foreach ($alternatif as $item)
                                <option value="{{ $item->nisn }}">{{ $item->nama }}</option>
                            @endforeach
                        </select>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                @foreach ($kriteria as $item)
                                    <th> {{ $item->kode }}-{{ $item->namakriteria }}</th>

                                    {{-- @foreach ($sub as $itemx)
                            {

                            }

                            @endforeach     --}}
                                @endforeach
                            </tr>

                        </thead>
                        <tbody>
                            <tr>
                                @foreach ($kriteria as $item)
                                    @foreach ($sub as $itemx)
                                        @if ($item->kode == $itemx->kode_id)
                                            @if (is_numeric($itemx->nilaiawal))
                                                <td>
                                                    <input type="text" class="form-control"
                                                        name="sub[]">
                                                    <input type="hidden" class="form-control"
                                                        name="idkriteria[]" value="{{ $itemx->kode_id }}">
                                                </td>
                                            @else
                                                <td>
                                                    <select name="sub[]" class="form-control">
                                                        @foreach ($sub as $itemv)
                                                            @if ($item->kode == $itemv->kode_id)
                                                                <option value="{{ $itemv->nilaiawal }}">
                                                                    {{ $itemv->nilaiawal }}</option>
                                                            @endif
                                                        @endforeach
                                                    </select>
                                                    <input type="hidden" class="form-control"
                                                        name="idkriteria[]" value="{{ $itemx->kode_id }}">

                                                </td>
                                            @endif
                                        @break
                                    @endif
                                @endforeach
                            @endforeach
                        </tr>
                    </tbody>
                </table>
                {{-- <div class="form-group">
                        <label for="select" class=" form-control-label ">Kriteria</label>
                        <select name="kriteria" onchange="subchange(this.value)" class="form-control"
                            autofocus>
                            <option value="">---Pilih---</option>
                            @foreach ($kriteria as $item)
                                <option value="{{ $item->kode }}">
                                    {{ $item->kode }}-{{ $item->namakriteria }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="select" class=" form-control-label ">Sub</label>
                        <select name="sub" id="sub" class="form-control" autofocus>
                            <option selected>---Pilih---</option>
                            @foreach ($sub as $item)
                                <option value="{{ $item->id }}">
                                    {{ $item->kode_id }}-{{ $item->desc }}</option>
                            @endforeach
                            </select>

                    </div> --}}
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

<script>
function subchange(x) {
var subdata = <?php echo json_encode($sub); ?>;

var baris = '<option value="">---Pilih---</option>'
subdata.forEach((element) => {
if (element.kode_id == x) {
    baris += `<option value="` + element.id + `">
                                    ` +
        element.kode_id + ` - ` + element.desc + `</option>`
}
})
$("#sub").html(baris)
}
</script>
@endsection