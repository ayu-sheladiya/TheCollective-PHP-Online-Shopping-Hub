@echo off
echo Importing database...
echo.
echo Make sure XAMPP MySQL is running before continuing!
echo.
pause

cd /d "C:\xampp\mysql\bin"

mysql -u root -e "CREATE DATABASE IF NOT EXISTS ecommerceweb;"

mysql -u root ecommerceweb < "c:\xampp\htdocs\eCommerce-website-in-PHP-main\DATABASE FILE\ecommerceweb.sql"

echo.
echo Database import completed!
echo.
pause
