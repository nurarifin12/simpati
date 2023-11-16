<?php include('./header.php'); ?>
<?php include 'db_connect.php' ?>

<?php


// if (isset($_GET['id'])) {
// $login_type = array('', "Admin", "Staff", "Mahasiswa", "Dosen", "Mitra", "Alumni");
//     $sql = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM users where id = " . $_GET['id'])->fetch_array();
//     foreach ($sql as $k => $v) {
//         $$k = $v;
//     }
// }

$query    = mysqli_query($conn, "SELECT * FROM users ORDER BY id DESC");
while ($result    = mysqli_fetch_array($query)) :
endwhile
?>
<!-- Navbar -->
<nav class="main-header navbar navbar-expand">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>

    </ul>
    <ul class="navbar-nav ml-auto">

        <li class="nav-item">
            <a class="nav-link" href="#" aria-haspopup="true" aria-expanded="false">
                <span class="brand-text text-dark"><?php echo ucwords($_SESSION['login_firstname'] . ' ' . $_SESSION['login_lastname'] . ' /' . $_SESSION['login_type']) ?></span>
                <img class="img-profile rounded-circle" src="assets/default.jpg" width="30px">
            </a>
            <!-- Dropdown - User Information -->
        </li>
    </ul>


</nav>
<!-- /.navbar -->