<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('/css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/style.css') }}">
    @yield('styles')
    <title>Tachooze</title>
</head>

<body>
    <header class='flex items-center pl-10'>
        <img src="{{ asset('/images/Tachooze.png') }}" alt="Logo Tachooze" class='h-24 w-auto my-7'>
        <nav class='flex text-nav pl-48'>
            <a href="/">Home</a>
            <a href="/searchTattoos">Search Tattoos</a>
            <a href="/position">Position</a>
            <a href="/artists">Artists</a>
            <a href="/info">Info</a>
        </nav>
    </header>

    <main>
        @yield('main')
    </main>
</body>

</html>
