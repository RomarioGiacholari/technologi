<?php

try {
    $hostname = 'db';
    $username = 'root';
    $password = 'root';
    $database = 'technologi';
    $port = 3306;

    $mysqli = new mysqli($hostname, $username, $password, $database, $port);

    return $mysqli;
} catch (Exception $exception) {
    echo 'Error connecting to the database';
    throw $exception;
}
