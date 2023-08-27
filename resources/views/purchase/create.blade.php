<!-- resources/views/purchase/create.blade.php -->

@extends('layouts.app')

@section('content')
    <h1>Purchase Balls</h1>
    <form action="{{ route('purchase.store') }}" method="POST">
        @csrf
        @foreach ($balls as $ball)
            <div>
                <label>
                    <input type="number" name="ball_quantities[{{ $ball->id }}]" min="0">
                    {{ $ball->name }} (Size: {{ $ball->size }}) 
                </label>
            </div>
        @endforeach
        <button type="submit">Purchase</button>
    </form>
@endsection
