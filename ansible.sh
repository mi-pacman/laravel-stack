mkdir laravel
git clone https://github.com/laravel/laravel laravel
sudo docker run --rm -v $(pwd)/laravel:/app composer install
sudo chown -R dedsec:dedsec laravel
sudo docker compose up -d
sudo docker compose exec app php artisan key:generate
sudo docker compose exec app php artisan config:cache
