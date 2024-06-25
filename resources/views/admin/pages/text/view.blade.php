@extends('admin.layouts.base')
@section('title', 'TextPreview')
@section('content')
    <div class="container">
        <h1>View Text</h1>
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" name="title" class="form-control" value="{{ $text->title }}" disabled>
        </div>
        <div class="form-group">
            <label for="heading">Heading</label>
            <input type="text" name="heading" class="form-control" value="{{ $text->heading }}" disabled>
        </div>
        <div class="form-group">
            <label for="subheading">Subheading</label>
            <input type="text" name="subheading" class="form-control" value="{{ $text->subheading }}" disabled>
        </div>
        <div class="form-group">
            <label for="paragraph">Paragraph</label>
            <textarea name="paragraph" class="form-control" disabled>{{ $text->paragraph }}</textarea>
        </div>
    </div>
@endsection
