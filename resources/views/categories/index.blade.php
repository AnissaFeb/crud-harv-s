@extends('layouts.frontend')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Categories List
                        <a href="{{ route('categories.create') }}" class="btn btn-primary float-end">Add Category</a>
                        <a href="{{ route('categories.exportPdf') }}" class="btn btn-secondary float-end me-2">Export PDF</a>
                    </h4>
                </div>
                <div class="card-body">
                    <!-- Search Form -->
                    <form method="GET" action="{{ route('categories.index') }}" class="mb-3">
                        <div class="input-group">
                            <input type="text" name="search" class="form-control" placeholder="Search Categories" value="{{ request()->query('search') }}">
                            <button class="btn btn-primary" type="submit">Search</button>
                        </div>
                    </form>

                    <!-- Categories Table -->
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Color/Pattern</th>
                                <th>Size</th>
                                <th>Stock</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($categories as $category)
                            <tr>
                                <td>{{ $category->id }}</td>
                                <td>{{ $category->nama }}</td>
                                <td>{{ $category->warna }}</td>
                                <td>{{ $category->ukuran }}</td>
                                <td>{{ $category->stock }}</td>
                                <td>
                                    <a href="{{ route('categories.edit', $category->id) }}" class="btn btn-success">Edit</a>
                                    <a href="{{ route('categories.show', $category->id) }}" class="btn btn-info">Show</a>
                                    
                                    <form action="{{ route('categories.destroy', $category->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $categories->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
