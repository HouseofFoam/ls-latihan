<?php
session_start();
include_once 'conf.php';
if (!isset($_SESSION['login'])) {
    $_SESSION['level'] = "";
    $_SESSION['name'] = "Unknown User";
    $_SESSION['gambar'] = "unknown.jpg";
    error_reporting(E_ERROR | E_PARSE);
}
?>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
        <div class="container">
            <a class="navbar-brand" 
            <?php if (isset($_SESSION['login'])) { ?> href="index.php?pilih=user&m=showuser" <?php } else { ?> href="index.php?pilih=login" <?php
            } ?>>
                <img src="assets/users/<?php echo $_SESSION['gambar'] ?>" width="30" height="30" class="d-inline-block align-top" alt="">
                <?php echo $_SESSION['name']; ?></a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.php?pilih=home">Home <span class="sr-only">(current)</span></a>
                </li>
                <?php
                if (isset($_SESSION['login'])) {
                    if ($_SESSION['level'] == "pelanggan") { ?>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?pilih=mycart">MyCart</a>
                        </li>
                    <?php
                    } else if ($_SESSION['level'] == "publisher" ) { ?>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?pilih=mycart">MyBuyer</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?pilih=upload">Upload Buku Baru</a>
                        </li>
                    <?php
                    } else if ($_SESSION['level'] == "admin") { ?>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?pilih=mycart">MyBuyer</a>
                        </li>
                    <?php
                    } ?>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?pilih=logout">Logout</a>
                    </li>
                <?php
                } else { ?>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?pilih=login">Login/Register</a>
                    </li>
                <?php
                }
                ?>
            </ul>
        </div>
    </nav>
    <?php
    if (!is_null(get('pilih'))) {
        switch (get('pilih')) {
            case 'home':
                switch (get('m')) {
                    case 'lihat':
                        inc('book/view/viewbooks');
                        break;
                    case 'edit':
                        if ($_SESSION['level'] == "publisher") {
                        inc('book/view/vieweditbooks');
                        }
                        else{
                        inc('noaccess');
                        }
                        break;
                    default:
                        inc('book/view/viewshowbooks');
                        break;
                }
                break;
            case 'mycart':
                if (isset($_SESSION['login'])) {
                inc('membeli/view/viewshowcart');
                }else{
                    inc('noaccess');
                }
                break;
            case 'cart':
                if (isset($_SESSION['login'])) {
                 inc('membeli/view/viewaddtocart');
                }else{
                    inc('noaccess');
                }
                break;
            case 'upload':
                if ($_SESSION['level'] == "publisher" or $_SESSION['level'] = "admin") {
                inc('book/view/viewaddbooks');
                }
                else{
                    inc('noaccess');
                }
                break;
            case 'user':
                switch (get('m')) {
                    case 'showuser':
                        if (isset($_SESSION['login'])) {
                        inc('user/view/viewuser');
                        }else{
                            inc('noaccess');
                        }
                        break;
                    case 'edituser':
                        if (isset($_SESSION['login'])) {
                        inc('user/view/edituser');
                        }else{
                            inc('noaccess');
                        }
                        break;
                    default:
                        inc('user/view/viewuser');
                        break;
                }
                break;
            case 'login':
                switch (get('m')) {
                    case 'register':
                        inc('user/view/register');
                        break;
                    default:
                        inc('user/view/login');
                        break;
                }
                break;
            case 'logout':
                inc('user/view/logout');
                break;
            default:
                inc('book/view/viewshowbooks');
                break;
        }
    } else {
        inc('book/view/viewshowbooks');
    }
?>

</body>

</html>