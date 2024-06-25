@extends('admin.layouts.base')
@section('title', 'ImageCreate')
@section('content')
    <div class="container">
        <h1>Add Galeri</h1>
        <form action="{{ route('galeri.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="id_image">Image</label>
                <select name="id_image" class="form-control">
                    @foreach ($images as $image)
                        <option value="{{ $image->id }}">{{ $image->path }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="id_text">Text</label>
                <select name="id_text" class="form-control">
                    @foreach ($texts as $text)
                        <option value="{{ $text->id }}">{{ $text->paragraph }}</option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>
@endsection
