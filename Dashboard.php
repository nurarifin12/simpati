<?php include('db_connect.php') ?>
<?php include('./header.php'); ?>

<!-- Info boxes -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>

<body>
    <?php if ($_SESSION['login_type'] == 1) : ?>
        <h2> <b>Selamat datang di SIMPATI</b> </h2>
        <p>SIMPATI merupakan singkatan dari Sistem Informasi Monitoring dan Evaluasi Pendidikan Tinggi</p>
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h3><?php echo $conn->query("SELECT * FROM users where type >= 2")->num_rows; ?>
                            <sup style="font-size: 20px"></sup>
                        </h3>

                        <p>Total Users</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <a href="./index.php?page=user_list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner">
                        <h3><?php echo $conn->query("SELECT * FROM users where type = 4")->num_rows; ?>
                            <sup style="font-size: 20px"></sup>
                        </h3>

                        <p>DOSEN</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fa fa-regular fa-user"></i>
                    </div>
                    <a href="./index.php?page=user_list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                    <div class="inner">
                        <h3><?php echo $conn->query("SELECT * FROM users where type = 3")->num_rows; ?>
                            <sup style="font-size: 20px"></sup>
                        </h3>

                        <p>Mahasiswa</p>
                    </div>
                    <div class="icon">
                        <i class=" fa fa-regular fa-user"></i>
                    </div>
                    <a href="./index.php?page=user_list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-secondary">
                    <div class="inner">
                        <h3><?php echo $conn->query("SELECT * FROM users where type = 2")->num_rows; ?>
                            <sup style="font-size: 20px"></sup>
                        </h3>

                        <p>Staf/Karyawan</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fa fa-regular fa-user"></i>
                    </div>
                    <a href="./index.php?page=user_list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3><?php echo $conn->query("SELECT * FROM users where type = 5")->num_rows; ?>
                            <sup style="font-size: 20px"></sup>
                        </h3>

                        <p>Mitra</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fa fa-regular fa-user"></i>
                    </div>
                    <a href="./index.php?page=user_list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-light">
                    <div class="inner">
                        <h3><?php echo $conn->query("SELECT * FROM users where type = 6")->num_rows; ?>
                            <sup style="font-size: 20px"></sup>
                        </h3>

                        <p>Alumni</p>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fa fa-regular fa-user"></i>
                    </div>
                    <a href="./index.php?page=user_list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h3> <?php echo $conn->query("SELECT * FROM survey_set")->num_rows; ?><sup style="font-size: 20px"></sup></h3>

                        <p>Total Survey</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-poll-h"></i>
                    </div>
                    <a href="./index.php?page=survey_list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>

        </div>
    <?php else : ?>
        <h2 class=" text-green text-bold">
            Selamat datang <?php echo $_SESSION['login_name'] ?>! <br>
        </h2>
        <p class=" text-md text-lg">
            SIMPATI - Sistem Informasi Monitoring dan Evaluasi Perguruan Tinggi <br>
            SIMPATI UNUGHA merupakan sistem yang digunakan untuk merancang dan melaksanakan evaluasi manajemen pengelolaan
            perguruan tinggi berbasis instrumen kuesioner atau survei. </p>
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-light">
                    <div class="inner">
                        <h3>
                            <?php echo $conn->query("SELECT distinct(survey_id) FROM answers  where user_id = {$_SESSION['login_id']}")->num_rows; ?><sup style="font-size: 20px"></sup>
                        </h3>

                        <p>Total Survey Diisi</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-poll-h"></i>
                    </div>
                    <a href="./index.php?page=survey_widget" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- Ini Bekas Survey -->
            <!-- End -->
        </div>
    <?php endif; ?>
</body>

</html>