<!-- resources/views/buckets/index.blade.php -->

@extends('layouts.app')

@section('content')
    <div class="container">
        

        <h2 class="mt-4">Create Bucket</h2>
        <a href="/" class="btn btn-secondary mb-3">Back to Home</a>
        <form action="{{ route('buckets.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Bucket Name:</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="capacity" class="form-label">Bucket Capacity:</label>
                <input type="number" name="capacity" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>

        <h1 class="mb-4">Buckets</h1>
        <ul class="list-group">
            @foreach ($buckets as $bucket)
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    {{ $bucket->name }} (Capacity: {{ $bucket->capacity }})
                    <form action="{{ route('buckets.destroy', $bucket->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </li>
            @endforeach
        </ul>
    </div>
@endsection
