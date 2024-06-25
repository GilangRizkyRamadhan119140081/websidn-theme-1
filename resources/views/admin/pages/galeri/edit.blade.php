@extends('admin.layouts.base')
@section('title', 'ImageCreate')
@section('content')
    <div class="container">
        <h1>Edit Galeri</h1>
        <form action="{{ route('galeri.update', $galeri->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="id_image">Image</label>
                <select name="id_image" class="form-control">
                    @foreach ($images as $image)
                        <option value="{{ $image->id }}" @if ($galeri->id_image == $image->id) selected @endif>
                            {{ $image->path }}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="id_text">Text</label>
                <select name="id_text" class="form-control">
                    @foreach ($texts as $text)
                        <option value="{{ $text->id }}" @if ($galeri->id_text == $text->id) selected @endif>
                            {{ $text->paragraph }}</option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
@endsection
