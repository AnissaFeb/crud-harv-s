<!DOCTYPE html>
<html>
<head>
    <title>Daftar Kategori</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Daftar Kategori</h1>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Nama</th>
                <th>Warna/Motif</th>
                <th>Ukuran</th>
                <th>Stock</th>
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
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
