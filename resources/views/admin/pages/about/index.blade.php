@extends('admin.layouts.base')
@section('title', 'About')
@section('content')
    <h1 class="h3 mb-4 text-gray-800 bg-white p-3">Daftar Gambar</h1>
    <div class="accordion" id="accordionExample">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h2 class="mb-0">
                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
                        data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Klik Petunjuk!
                    </button>
                </h2>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div class="card-body">
                    Some placeholder content for the first accordion panel. This panel is shown by default, thanks to the
                    <code>.show</code> class.
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="container-fluid bg-white p-2">
        <a href="{{ route('about.create') }}" class="btn btn-primary mb-3">Tambah About Baru</a>
    </div>
    <br>
    <div class="container-fluid bg-white">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Judul</th>
                        <th>Text</th>
                        <th>Video</th>
                        <th>Gambar</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($abouts as $about)
                        <tr>
                            <td>{{ $about->id }}</td>
                            <td>{{ $about->judul }}</td>
                            <td>{{ $about->text }}</td>
                            <td>{{ $about->video }}</td>
                            <td>
                                @if ($about->gambar)
                                    <img src="{{ asset('storage/' . $about->gambar) }}" alt="Gambar About"
                                        style="max-width: 100px;">
                                @else
                                    -
                                @endif
                            </td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Actions">
                                    <a href="{{ route('about.edit', ['id' => $about->id]) }}"
                                        class="btn btn-sm btn-primary">Edit</a>
                                    <a href="{{ route('about.view', ['id' => $about->id]) }}"
                                        class="btn btn-sm btn-info">View</a>
                                    <form action="{{ route('about.delete', ['id' => $about->id]) }}" method="POST"
                                        style="display: inline-block;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger"
                                            onclick="return confirm('Apakah Anda yakin ingin menghapus about ini?')">Delete</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
