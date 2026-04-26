@echo off
"D:\xampp\mysql\bin\mysql.exe" -u root -e "DROP DATABASE IF EXISTS ecommerceweb; CREATE DATABASE ecommerceweb CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
"D:\xampp\mysql\bin\mysql.exe" -u root ecommerceweb < "D:\xampp\htdocs\eCommerce-website-in-PHP-main\DATABASE FILE\ecommerceweb.sql"
