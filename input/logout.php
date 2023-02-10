<?php
session_start();
unset($_SESSION['user']);
unset($_COOKIE["cookLog"]);
header('Location: ../index.php');
exit;

