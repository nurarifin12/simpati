<?php include 'db_connect.php' ?>
<?php
$answers = $conn->query("SELECT distinct(survey_id) from answers where user_id ={$_SESSION['login_id']}");
$ans = array();
while ($row = $answers->fetch_assoc()) {
    $ans[$row['survey_id']] = 1;
}
?>
<div class="col-lg-12">
    <div class="d-flex w-100 justify-content-center align-items-center mb-2">
        <label for="" class="control-label">Find Survey</label>
        <div class="input-group input-group-sm col-sm-5">
            <input type="text" class="form-control" id="filter" placeholder="Enter keyword...">
            <span class="input-group-append">
                <button type="button" class="btn btn-primary btn-flat" id="search">Search</button>
            </span>
        </div>
    </div>
    <div class=" w-100" id='ns' style="display: none">
        <center><b>No Result.</b></center>
    </div>
    <div class="row">
        <?php
        $survey = $conn->query("SELECT * FROM survey_set where end_date ");
        // Cek apakah pengguna sudah login dan memiliki type 3
        if (isset($_SESSION['login_type']) && $_SESSION['login_type'] == 3) {
            // Query survei dengan id 6 dan id 13
            $survey = $conn->query("SELECT * FROM survey_set WHERE id IN (6, 13) AND end_date >= NOW()");
            while ($row = $survey->fetch_assoc()) :
        ?>
                <div class="col-md-3 py-1 px-1 survey-item">
                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?php echo ucwords($row['title']) ?></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <?php echo $row['description'] ?>
                            <div class="row">
                                <hr class="border-primary">
                                <div class="d-flex justify-content-center w-100 text-center">
                                    <?php if (!isset($ans[$row['id']])) : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php else : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        <?php
            endwhile;
        } else {
            echo "None - ";
        }
        ?>

        <?php
        $survey = $conn->query("SELECT * FROM survey_set where end_date ");
        // Cek apakah pengguna sudah login dan memiliki type 3
        if (isset($_SESSION['login_type']) && $_SESSION['login_type'] == 2) {
            // Query survei dengan id 6 dan id 13
            $survey = $conn->query("SELECT * FROM survey_set WHERE id IN (9, 13) AND end_date >= NOW()");
            while ($row = $survey->fetch_assoc()) :
        ?>
                <div class="col-md-3 py-1 px-1 survey-item">
                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?php echo ucwords($row['title']) ?></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <?php echo $row['description'] ?>
                            <div class="row">
                                <hr class="border-primary">
                                <div class="d-flex justify-content-center w-100 text-center">
                                    <?php if (!isset($ans[$row['id']])) : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php else : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        <?php
            endwhile;
        } else {
            // Tambahkan logika atau pesan untuk pengguna yang tidak memiliki tipe 3
            echo "None - ";
        }
        ?>

        <?php
        $survey = $conn->query("SELECT * FROM survey_set where end_date ");
        // Cek apakah pengguna sudah login dan memiliki type 3
        if (isset($_SESSION['login_type']) && $_SESSION['login_type'] == 4) {
            // Query survei dengan id 6 dan id 13
            $survey = $conn->query("SELECT * FROM survey_set WHERE id IN (9, 13) AND end_date >= NOW()");
            while ($row = $survey->fetch_assoc()) :
        ?>
                <div class="col-md-3 py-1 px-1 survey-item">
                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?php echo ucwords($row['title']) ?></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <?php echo $row['description'] ?>
                            <div class="row">
                                <hr class="border-primary">
                                <div class="d-flex justify-content-center w-100 text-center">
                                    <?php if (!isset($ans[$row['id']])) : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php else : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        <?php
            endwhile;
        } else {
            // Tambahkan logika atau pesan untuk pengguna yang tidak memiliki tipe 3
            echo "None - ";
        }
        ?>

        <?php
        $survey = $conn->query("SELECT * FROM survey_set where end_date ");
        // Cek apakah pengguna sudah login dan memiliki type 3
        if (isset($_SESSION['login_type']) && $_SESSION['login_type'] == 5) {
            // Query survei dengan id 6 dan id 13
            $survey = $conn->query("SELECT * FROM survey_set WHERE id IN (8, 11) AND end_date >= NOW()");
            while ($row = $survey->fetch_assoc()) :
        ?>
                <div class="col-md-3 py-1 px-1 survey-item">
                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?php echo ucwords($row['title']) ?></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <?php echo $row['description'] ?>
                            <div class="row">
                                <hr class="border-primary">
                                <div class="d-flex justify-content-center w-100 text-center">
                                    <?php if (!isset($ans[$row['id']])) : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php else : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        <?php
            endwhile;
        } else {
            // Tambahkan logika atau pesan untuk pengguna yang tidak memiliki tipe 3
            echo "None - ";
        }
        ?>

        <?php
        $survey = $conn->query("SELECT * FROM survey_set where end_date ");
        // Cek apakah pengguna sudah login dan memiliki type 3
        if (isset($_SESSION['login_type']) && $_SESSION['login_type'] == 6) {
            // Query survei dengan id 6 dan id 13
            $survey = $conn->query("SELECT * FROM survey_set WHERE id IN (10) AND end_date >= NOW()");
            while ($row = $survey->fetch_assoc()) :
        ?>
                <div class="col-md-3 py-1 px-1 survey-item">
                    <div class="card card-outline card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?php echo ucwords($row['title']) ?></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body" style="display: block;">
                            <?php echo $row['description'] ?>
                            <div class="row">
                                <hr class="border-primary">
                                <div class="d-flex justify-content-center w-100 text-center">
                                    <?php if (!isset($ans[$row['id']])) : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php else : ?>
                                        <a href="index.php?page=answer_survey&id=<?php echo $row['id'] ?>" class="btn btn-sm bg-gradient-primary"><i class="fa fa-pen-square"></i> Take Survey</a>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        <?php
            endwhile;
        } else {
            echo "None";
        }
        ?>

    </div>
</div>
<script>
    function find_survey() {
        start_load()
        var filter = $('#filter').val()
        filter = filter.toLowerCase()
        console.log(filter)
        $('.survey-item').each(function() {
            var txt = $(this).text()
            if ((txt.toLowerCase()).includes(filter) == true) {
                $(this).toggle(true)
            } else {
                $(this).toggle(false)
            }
            if ($('.survey-item:visible').length <= 0) {
                $('#ns').show()
            } else {
                $('#ns').hide()
            }
        })
        end_load()
    }
    $('#search').click(function() {
        find_survey()
    })
    $('#filter').keypress(function(e) {
        if (e.which == 13) {
            find_survey()
            return false;
        }
    })
</script>