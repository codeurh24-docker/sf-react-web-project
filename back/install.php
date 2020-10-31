<?php
$env = file_get_contents('./project/.env');
$env = str_replace(
    'DATABASE_URL=mysql://db_user:db_password@127.0.0.1:3306',
    'DATABASE_URL=mysql://root:password@172.16.238.10:3306',
    $env
);
file_put_contents('./project/.env', $env);