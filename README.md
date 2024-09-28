# Chat Laravel Pusher

I built a Chat Application using Laravel & Pusher where you can chat with all your friends in any location,
just open up the website in your browser and start chatting!
And I built this in within a minutes!

## Requirements

- PHP v8.1
- Composer v2.5.5
- Web Server (HTTPS)

## Setup

```code
composer create-project laravel/laravel chat-laravel-pusher
```

```code 
cd chat-laravel-pusher
```

```
composer require pusher/pusher-php-server
```

```
php artisan make:controller PusherController
```

```
php artisan make:event PusherBroadcast
```

## Code

- `routes/web.php`


- `app/Http/Controllers/PusherController.php`
    - index()
    - broadcast()
    - receive()


- `app/Events/PusherBroadcast.php`


- Code
    - `resources/views/index.blade.php`
    - `resources/views/broadcast.blade.php`
    - `resources/views/receive.blade.php`

## www.pusher.com

- Create Account
- Create App
- Copy API Keys

## Env

Copy `.env.example` and name `.env` and populate the following API keys

- `BROADCAST_DRIVER`
- `PUSHER_APP_ID`
- `PUSHER_APP_KEY`
- `PUSHER_APP_SECRET`
- `PUSHER_APP_CLUSTER`

## CSS

Copy style css from the live system and paste it in `public/style.css`

- `https://chat.laravel.pusher.edlin.app/style.css`

## Deploy

SFTP to your favourite hosting provider, make sure it's HTTPS.
