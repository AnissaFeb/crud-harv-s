@extends('layouts.frontend')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Show Category Details
                        <a href="{{ route('categories.index') }}" class="btn btn-danger float-end">Back</a>
                    </h4>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label>Nama</label>
                        <p>{{ $category->nama }}</p>
                    </div>
                    <div class="mb-3">
                        <label>Warna/Motif</label>
                        <p>{{ $category->warna }}</p>
                    </div>
                    <div class="mb-3">
                        <label>Ukuran</label>
                        <p>{{ $category->ukuran }}</p>
                    </div>
                    <div class="mb-3">
                        <label>Stock</label>
                        <p>{{ $category->stock }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
