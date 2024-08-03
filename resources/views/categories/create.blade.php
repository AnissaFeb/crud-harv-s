@extends('layouts.frontend')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Create Categories
                        <a href="{{ route('categories.create') }}" class="btn btn-primary float-end">Add Category</a>
                    </h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('categories.store') }}" method="POST">
                        @csrf
                        <div class="mb-3">
                            <label for="nama">Nama</label>
                            <input type="text" id="nama" name="nama" class="form-control" />
                            @error('nama') <span class="text-danger">{{ $message }}</span> @enderror
                        </div>
                        <div class="mb-3">
                            <label for="warna">Warna/Motif</label>
                            <input type="text" id="warna" name="warna" class="form-control" />
                            @error('warna') <span class="text-danger">{{ $message }}</span> @enderror
                        </div>
                        <div class="mb-3">
                            <label for="ukuran">Ukuran</label>
                            <input type="text" id="ukuran" name="ukuran" class="form-control" />
                            @error('ukuran') <span class="text-danger">{{ $message }}</span> @enderror
                        </div>
                        <div class="mb-3">
                            <label for="stock">Stok</label>
                            <input type="number" id="stock" name="stock" class="form-control" />
                            @error('stock') <span class="text-danger">{{ $message }}</span> @enderror
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>                            
                    </form>
            </div>
        </div>
    </div>
</div>

@endsection