<?php

echo "hello world";

if (!isset($_POST['database'])){
    include "database.sql";
}