# Схема базы данных

![Database Schema](database/DB.png)

# Инструкция по запуску проекта

Клонируйте репозиторий <br>
Создайте бд и настройте нужные параметры в файле .env (Название бд указано в .env)<br>
Установите зависимости: composer install<br>
Заполните базу данных: php artisan migrate --seed<br>
Запустите локальный сервер: php artisan serve<br>

Тестирование выполнялось через Postman