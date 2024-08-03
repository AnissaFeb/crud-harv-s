@extends('layouts.frontend')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Edit Category
                        <a href="{{ route('categories.index') }}" class="btn btn-danger float-end">Back</a>
                    </h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('categories.update', $category->id) }}" method="POST">
                        @csrf
                        @method('PUT') <!-- Tambahkan method PUT untuk update -->
                            
                            <div class="mb-3">
                                <label for="nama">Nama</label>
                                <input type="text" id="nama" name="nama" class="form-control" value="{{ old('nama', $category->nama) }}" />
                                @error('nama') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                            <div class="mb-3">
                                <label for="warna">Warna/Motif</label>
                                <input type="text" id="warna" name="warna" class="form-control" value="{{ old('warna', $category->warna) }}" />
                                @error('warna') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                            <div class="mb-3">
                                <label for="ukuran">Ukuran</label>
                                <input type="text" id="ukuran" name="ukuran" class="form-control" value="{{ old('ukuran', $category->ukuran) }}" />
                                @error('ukuran') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                            <div class="mb-3">
                                <label for="stock">Stock</label>
                                <input type="number" id="stock" name="stock" class="form-control" value="{{ old('stock', $category->stock) }}" />
                                @error('stock') <span class="text-danger">{{ $message }}</span> @enderror
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>                            
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
