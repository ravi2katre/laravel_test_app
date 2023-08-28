@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Buckets with Balls Report (Grouped by Bucket and Ball Name)</h1>

    <table class="table">
        <thead>
            <tr>
                <th>Bucket Name</th>
                <th>Ball Name</th>
                <th>Total Balls in Bucket</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($bucketsWithBalls as $item)
            <tr>
                <td>{{ $item->bucket->name }}</td>
                <td>{{ $item->ball->name }}</td>
                <td>{{ $item->total_quantity }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <h1>Unnassigned Balls</h1>
    <table class="table">
        <thead>
            <tr>
                <th>Color</th>
                <th>Count</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($totalBallCounts as $count)
            <tr>
                <td>{{ $count->name }}</td>
                <td>{{ $count->count }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
