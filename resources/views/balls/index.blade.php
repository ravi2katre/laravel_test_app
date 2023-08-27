@extends('layouts.app')

@section('content')
<div class="container">

    <div class="mt-5">
        <h2>Create Ball</h2>
        <form action="{{ route('balls.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Ball Name:</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="size" class="form-label">Ball Size:</label>
                <input type="number" name="size" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>

    <h1 class="mb-4">Balls</h1>
    <ul class="list-group">
        @foreach ($balls as $ball)
            <li class="list-group-item d-flex justify-content-between align-items-center">
                {{ $ball->name }} (Size: {{ $ball->size }})
                <form action="{{ route('balls.destroy', $ball->id) }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                </form>
            </li>
        @endforeach
    </ul>

</div>
@endsection
