@extends('dashboard.base')

@section('page Heading')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
  <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
</div>
@endsection

@section('content')
<h1 class="text-gray-800 mb-1">Nama Anggota</h1>
<table class="table table-striped">
    <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nama</th>
            <th scope="col">Kelas</th>
            <th scope="col">NIM</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Damarjati Dias Siwi</td>
            <td>22A2</td>
            <td>230101046</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Toti Fernanda Suprapto</td>
            <td>22A2</td>
            <td>220101077</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Nopi Doni Romadhon</td>
            <td>22A2</td>
            <td>220101068</td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <td>Rafi Nabil Bahthiar</td>
            <td>22A2</td>
            <td>220101069</td>
          </tr>
          <tr>
            <th scope="row">5</th>
            <td>Muh. Abdullah</td>
            <td>22A2</td>
            <td>220101064</td>
          </tr>
        </tbody>
      </table>
@endsection