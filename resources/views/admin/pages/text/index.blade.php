@extends('admin.layouts.base')
@section('title', 'Text')
@section('content')
    <h1 class="h3 mb-4 text-gray-800 bg-white p-3">Text</h1>
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
        <a href="{{ route('text.create') }}" class="btn btn-primary">Add Text</a>
    </div>
    <br>
    <div class="container-fluid bg-white">
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Heading</th>
                        <th>Subheading</th>
                        <th>Paragraph</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($texts as $text)
                        <tr>
                            <td>{{ $text->id }}</td>
                            <td>{{ $text->title }}</td>
                            <td>{{ $text->heading }}</td>
                            <td>{{ $text->subheading }}</td>
                            <td>{{ $text->paragraph }}</td>
                            <td>
                                <div class="btn-group" role="group" aria-label="Actions">
                                    <a href="{{ route('text.edit', $text->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="{{ route('text.view', $text->id) }}" class="btn btn-info btn-sm">View</a>
                                    <form action="{{ route('text.delete', $text->id) }}" method="POST"
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
