@extends('admin.layouts.base')
@section('title', 'Beranda')
@section('content')
    <h1 class="h3 mb-4 text-gray-800 bg-white p-3">Komponen Beranda</h1>
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
        <a href="{{ route('home.create') }}" class="btn btn-primary">Add Home</a>
    </div>
    <br>
    <div class="container-fluid bg-white">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Kategori</th>
                        <th>Image</th>
                        <th>Text</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($homes as $home)
                        <tr>
                            <td>{{ $home->id }}</td>
                            <td>{{ $home->kategori }}</td>
                            <td>
                                @if ($home->images)
                                    <img src="{{ asset('storage/' . $home->images->path) }}" alt="Gambar Home"
                                        width="300" height="200">
                                @else
                                    Gambar tidak tersedia
                                @endif
                            </td>
                            <td>{{ $home->texts->paragraph }}</td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Actions">
                                    <a href="{{ route('home.edit', $home->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="{{ route('home.view', $home->id) }}" class="btn btn-info btn-sm">View</a>
                                    <form action="{{ route('home.delete', $home->id) }}" method="POST"
                                        style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
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
