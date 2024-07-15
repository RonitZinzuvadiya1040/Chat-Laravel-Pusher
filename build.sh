#!/bin/bash

# Ensure the script stops if any command fails
set -e

# Install missing dependencies
apt-get update && apt-get install -y libssl1.0.0 libssl-dev

# Install PHP dependencies
composer install --no-dev --optimize-autoloader

# Install Node.js dependencies and build assets
npm install
npm run build

# Set up the Laravel environment
php artisan config:cache
php artisan route:cache
php artisan view:cache
