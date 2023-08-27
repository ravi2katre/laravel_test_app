<!-- resources/views/layouts/app.blade.php -->

<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
</head>
<body>
    <header>
        <!-- Your header content here -->
    </header>

    <main class="container mt-4">
        @if(session('message'))
        <div>{{ session('message') }}</div>
        @endif
        @yield('content')
    </main>

    <footer>
        <!-- Your footer content here -->
    </footer>
    
    <script src="{{ mix('js/app.js') }}"></script>
</body>
</html>
