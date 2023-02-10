<?php
session_start();
$conn = mysqli_connect('Localhost', 'root', '', 'task14');

$login = trim($_POST['login']);
$password = trim(md5($_POST['password']));

$checkPassSql = mysqli_query($conn, "SELECT * FROM `usbd` WHERE `login`='$login' AND `password`='$password'");

if (mysqli_num_rows($checkPassSql) > 0){
    $t=time();
    $user = mysqli_fetch_assoc($checkPassSql);
    $_SESSION['user'] = $user['login'];
    $_SESSION['time'] = $t;
    header('Location: ../index.php');
    exit;
} else {
    $_SESSION['message'] = 'Неверный пользователь или пароль';
    header('Location: login.php');
    exit;
}