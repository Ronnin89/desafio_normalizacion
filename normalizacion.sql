-- Creación de la BD
CREATE DATABASE library;

-- Cambiando a la DB
\c library

-- Creación de la tabla publisher
CREATE TABLE publishers(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50) 
    );

-- Creación de la tabla reader
CREATE TABLE reader(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50)
    );

-- Creación de la tabla date
CREATE TABLE dev_date(
    id SERIAL PRIMARY KEY, 
    devolution_date DATE
    );

-- Creación de la tabla book
CREATE TABLE book(
    id INT PRIMARY KEY, 
    title VARCHAR(100), 
    publisher_id INT REFERENCES publisehrs(id), 
    reader_id INT REFERENCES readers(id), 
    dev_date_id INT REFERENCES dates(id) 
    );

-- Creación de la tabla author
CREATE TABLE author(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50)
    );

-- Creación de la tabla author_book

CREATE TABLE author_book(
    id SERIAL PRIMARY KEY, 
    author_id INT REFERENCES authors(id), 
    book_id INT REFERENCES books(id) 
    );