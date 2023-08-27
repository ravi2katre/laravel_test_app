<!-- resources/views/balls/index.blade.php -->

@extends('layouts.app')

@section('content')
    <h1>Balls</h1>
    <ul>
        @foreach ($balls as $ball)
            <li>{{ $ball->name }} (Size: {{ $ball->size }})</li>
        @endforeach
    </ul>

    <h2>Create Ball</h2>
    <form action="{{ route('balls.store') }}" method="POST">
        @csrf
        <label for="name">Ball Name:</label>
        <input type="text" name="name" required>
        <label for="size">Ball Size:</label>
        <input type="number" name="size" required>
        <button type="submit">Create</button>
    </form>
@endsection
