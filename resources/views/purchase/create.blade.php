@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4">Purchase Balls</h1>
    <form action="{{ route('purchase.store') }}" method="POST">
        @csrf
        <div class="row">
            @foreach ($balls as $ball)
            <div class="col-md-6 mb-3">
                <div class="form-group">
                    <label for="ball_quantity_{{ $ball->id }}">
                        {{ $ball->name }} (Size: {{ $ball->size }})
                    </label>
                    <input type="number"
                           class="form-control"
                           id="ball_quantity_{{ $ball->id }}"
                           name="ball_quantities[{{ $ball->id }}]"
                           min="0">
                </div>
            </div>
            @endforeach
        </div>
        <button type="submit" class="btn btn-primary">Purchase</button>
    </form>

    
</div>
@endsection
