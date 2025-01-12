<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryController;

Route::get('/', function () {
    return view('welcome');
});

Route::resource('categories', CategoryController::class);
Route::get('/categories/export-pdf', [CategoryController::class, 'exportPdf'])->name('categories.exportPdf');

