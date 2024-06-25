@extends('admin.layouts.base')
@section('title', 'TestimoniIndex')
@section('content')
    <h1 class="h3 mb-4 text-gray-800 bg-white p-3">Testimoni</h1>
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
        <a href="{{ route('testimoni.create') }}" class="btn btn-primary">Add Testimoni</a>
    </div>
    <br>
    <div class="container-fluid bg-white">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Job</th>
                        <th>Description</th>
                        <th>Image</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($testimonis as $testimoni)
                        <tr>
                            <td>{{ $testimoni->id }}</td>
                            <td>{{ $testimoni->name }}</td>
                            <td>{{ $testimoni->job }}</td>
                            <td>{{ $testimoni->description }}</td>
                            <td><img src="{{ asset('storage/' . $testimoni->image) }}" width="100"></td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Actions">
                                    <a href="{{ route('testimoni.edit', $testimoni->id) }}"
                                        class="btn btn-warning btn-sm">Edit</a>
                                    <a href="{{ route('testimoni.view', $testimoni->id) }}"
                                        class="btn btn-info btn-sm">View</a>
                                    <form action="{{ route('testimoni.delete', $testimoni->id) }}" method="POST"
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
