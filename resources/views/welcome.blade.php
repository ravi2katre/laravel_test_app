 @extends('layouts.app')

@section('content')
<h1>Welcome to Your App</h1>
    
    <ul>
        <li><a href="{{ route('buckets.index') }}">Buckets</a></li>
        <li><a href="{{ route('balls.index') }}">Balls</a></li>
        <li><a href="{{ route('purchase.create') }}">Assign balls to Buckets</a></li>
        <li><a href="{{ route('report.bucket') }}">Result</a></li>
    </ul>
@endsection