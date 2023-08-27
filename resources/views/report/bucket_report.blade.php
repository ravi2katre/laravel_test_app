<!-- resources/views/reports/buckets_with_balls.blade.php -->

@extends('layouts.app')

@section('content')
    <h1>Buckets with Balls Report (Grouped by Bucket and Ball Name)</h1>

    <table>
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
@endsection
