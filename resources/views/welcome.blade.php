@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mt-4">Welcome to Your App</h1>

    <div class="list-group mt-4">
        <a href="{{ route('buckets.index') }}" class="list-group-item list-group-item-action">Buckets</a>
        <a href="{{ route('balls.index') }}" class="list-group-item list-group-item-action">Balls</a>
        <a href="{{ route('purchase.create') }}" class="list-group-item list-group-item-action">Assign Balls to Buckets</a>
        <a href="{{ route('report.bucket') }}" class="list-group-item list-group-item-action">Result</a>
    </div>
</div>
@endsection
