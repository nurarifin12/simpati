<?php include 'db_connect.php' ?>
<?php include('./header.php'); ?>

<?php

if (isset($_GET['id'])) {
    $type_arr = array('', "Admin", "Staff", "Mahasiswa", "Dosen", "Mitra", "Alumni");
    $qry = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM users where id = " . $_GET['id'])->fetch_array();
    foreach ($qry as $k => $v) {
        $$k = $v;
    }
}
// $id = $_GET["id"];
// $sql = $conn->query("SELECT * FROM users WHERE id='$id'");
// $tampil = $sql->fetch_array();

// if ($result->num_rows > 0) {
//     // Data ditemukan
//     $row = $result->fetch_array();
//     // Lakukan sesuatu dengan data, misalnya:
//     $nama = $row['firstname'];
//     $email = $row['email'];
//     echo "ID: $id, Nama: $nama, Alamat: $alamat";
// } else {
//     echo "Data tidak ditemukan.";
// }
// 
?>

<!-- <div class="card mb-3" style="max-width: 540px;">
    <div class="row g-0">
        <div class="col-md-4">
            <img src="assets/user.jpg" width="200px" class="img-fluid rounded-start" alt="...">
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title text-bold">My Profile</h5>
                <p class="card-text mt-5">Name : <?php echo ucwords($name) ?></p>
                <p class="card-text">Email : <?php echo $email ?></p>
                <p class="card-text">Type user : <?php echo $type_arr[$type] ?></p>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <table class="table" id="list">
        <tr>
            <th>Name:</th>
            <td><b><?php echo ucwords($name) ?></b></td>
        </tr>
        <tr>
            <th>Email:</th>
            <td><b><?php echo $email ?></b></td>
        </tr>
        <tr>
            <th>Contact:</th>
            <td><b><?php echo $contact ?></b></td>
        </tr>
        <tr>
            <th>Address:</th>
            <td><b><?php echo $address ?></b></td>
        </tr>
        <tr>
            <th>User Role:</th>
            <td><b><?php echo $type_arr[$type] ?></b></td>
        </tr>
    </table>
</div> -->

<?php
$user_id = $_SESSION['login_id'];
$query = $conn->query("SELECT * FROM users WHERE id = $user_id");

if ($query) {
    $user_data = $query->fetch_assoc();

    $name = $user_data['firstname'] . ' ' . $user_data['middlename'] . ' ' . $user_data['lastname'];
    $email = $user_data['email'];
    $contact = $user_data['contact'];
    $address = $user_data['address'];
    $type = $user_data['type'];

    $type_arr = [
        1 => 'Admin',
        2 => 'Staf/Karyawan',
        3 => 'Mahasiswa',
        4 => 'Dosen',
        5 => 'Mitra',
        6 => 'Alumni'
    ];
?>

    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="assets/user.jpg" width="200px" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title text-bold">My Profile</h5>
                    <p class="card-text mt-5">Name : <?php echo ucwords($name) ?></p>
                    <p class="card-text">Email : <?php echo $email ?></p>
                    <p class="card-text">Type user : <?php echo $type_arr[$type] ?></p>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <table class="table" id="list">
            <tr>
                <th>Name:</th>
                <td><b><?php echo ucwords($name) ?></b></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><b><?php echo $email ?></b></td>
            </tr>
            <tr>
                <th>Contact:</th>
                <td><b><?php echo $contact ?></b></td>
            </tr>
            <tr>
                <th>Address:</th>
                <td><b><?php echo $address ?></b></td>
            </tr>
            <tr>
                <th>User Role:</th>
                <td><b><?php echo $type_arr[$type] ?></b></td>
            </tr>
        </table>
    </div>

<?php
} else {
    echo "Error retrieving user data.";
}
?>


<script>
    $('#list').dataTable()
</script>