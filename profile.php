<?php include 'db_connect.php' ?>
<?php include('./header.php'); ?>
<?php include('./sidebar.php'); ?>
<?php include('./topbar.php'); ?>

<?php
if (isset($_GET['id'])) {
    $type_arr = array('', "Admin", "Staff", "Mahasiswa", "Dosen", "Mitra", "Alumni");
    $qry = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM users where id = " . $_GET['id'])->fetch_array();
    foreach ($qry as $k => $v) {
        $$k = $v;
    }
}
?>

<div class="card mb-3" style="max-width: 540px;">
    <div class="row g-0">
        <div class="col-md-4">
            <img src="..." class="img-fluid rounded-start" alt="...">
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional
                    content. This content is a little bit longer.</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
            </div>
        </div>
    </div>
</div>