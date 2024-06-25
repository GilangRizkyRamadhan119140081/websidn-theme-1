@extends('admin.layouts.base')
@section('title', 'CoroselEdit')
@section('content')
    <div class="container">
        <h1>Edit Corosel</h1>
        <form action="{{ route('corosel.update', $corosel->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="resolusi">Orientation</label>
                <select name="resolusi" id="kategori" class="form-control" required>
                    <option value="" disabled {{ $corosel->resolusi == '' ? 'selected' : '' }}>Pilih Kategori</option>
                    <option value="Landscape" {{ $corosel->resolusi == 'Landscape' ? 'selected' : '' }}>Landscape</option>
                    <option value="Potrait" {{ $corosel->resolusi == 'Potrait' ? 'selected' : '' }}>Potrait</option>
                </select>
            </div>
            <div class="form-group">
                <label for="path">Image</label>
                <input type="file" name="path" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
@endsection
