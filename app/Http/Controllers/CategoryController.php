<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = Category::query();

        if ($request->filled('search')) {
            $query->where('nama', 'like', '%' . $request->search . '%')
                  ->orWhere('warna', 'like', '%' . $request->search . '%')
                  ->orWhere('ukuran', 'like', '%' . $request->search . '%');
        }

        $categories = $query->paginate(10);

        return view('categories.index', [
            'categories' => $categories
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('categories.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required|string|max:255',
            'warna' => 'required|string|max:255',
            'ukuran' => 'required|string|max:255',
            'stock' => 'required|integer|min:0',
        ]);

        Category::create([
            'nama' => $request->nama,
            'warna' => $request->warna,
            'ukuran' => $request->ukuran,
            'stock' => $request->stock,
        ]);

        return redirect('/categories')->with('status', 'Category Created Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        return view('categories.show', compact('category'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        return view('categories.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        $request->validate([
            'nama' => 'required|string|max:255',
            'warna' => 'required|string|max:255',
            'ukuran' => 'required|string|max:50',
            'stock' => 'required|integer|min:0',
        ]);

        $category->update([
            'nama' => $request->nama,
            'warna' => $request->warna,
            'ukuran' => $request->ukuran,
            'stock' => $request->stock,
        ]);

        return redirect('/categories')->with('status', 'Category Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        $category->delete();
        return redirect('/categories')->with('status', 'Category Deleted Successfully');
    }

    /**
     * Export the categories list to PDF.
     */
    public function exportPdf()
    {
        $categories = Category::all();
        $pdf = Pdf::loadView('categories.pdf', compact('categories'));
        return $pdf->download('daftar_kategori.pdf');
    }
}
