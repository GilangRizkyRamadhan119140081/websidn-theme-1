@extends('admin.layouts.base')
@section('title', 'TextCreate')
@section('content')
    <div class="container">
        <h1>Add Text</h1>
        <form action="{{ route('text.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="title">title</label>
                <input type="text" name="title" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="heading">Heading</label>
                <input type="text" name="heading" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="subheading">Subheading</label>
                <input type="text" name="subheading" class="form-control">
            </div>
            <div class="form-group">
                <label for="paragraph">Paragraph</label>
                <textarea name="paragraph" class="form-control" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
@endsection
