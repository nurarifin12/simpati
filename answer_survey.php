<?php include 'db_connect.php' ?>
<?php
$qry = $conn->query("SELECT * FROM survey_set where id = " . $_GET['id'])->fetch_array();
foreach ($qry as $k => $v) {
    if ($k == 'title')
        $k = 'stitle';
    $$k = $v;
}

?>
<div class="col-lg-12">
    <a href="./index.php?page=survey_widget" data-id="<?php echo $row['id'] ?>" class="badge bg-danger text-light py-3 px-4 my-2 view_user"> Back</a>
    <div class="row">
        <div class="col-md-4">
            <div class="card card-outline card-primary">
                <div class="card-header">
                    <h3 class="card-title"><b>Survey Details</b></h3>
                </div>
                <div class="card-body p-0 py-2">
                    <div class="container-fluid">
                        <p>Title: <b><?php echo $stitle ?></b></p>
                        <p class="mb-0">Description:</p>
                        <small><?php echo $description; ?></small>
                        <!-- <p>Start: <b><?php echo date("M d, Y", strtotime($start_date)) ?></b></p>
                        <p>End: <b><?php echo date("M d, Y", strtotime($end_date)) ?></b></p> -->

                        <?php
                        $selectedYear = isset($_GET['thn']) ? intval($_GET['thn']) : date('Y');

                        $currentDateTime = new DateTime();
                        $currentDateTimeStr = $currentDateTime->format('Y-d-m H:i:s');

                        $start_date = $selectedYear . '-11-16 14:18:00';
                        $end_date = $selectedYear . '-12-31 23:59:59';
                        ?>
                        <p>Start: <b><?php echo date("Y-d-m H:i:s", strtotime($start_date)) ?></b></p>
                        <input hidden type="text" name="start_date" value="<?= $start_date ?>">
                        <p>End: <b><?php echo date("M d, Y H:i:s", strtotime($end_date)) ?></b></p>

                        <p>Current DateTime: <b><?php echo $currentDateTimeStr; ?></b></p>
                    </div>
                    <hr class="border-primary">
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card card-outline card-success">
                <div class="card-header">
                    <div class="card-tools">
                        <button class="btn btn-primary dropdown-toggle mx-5" type="button" data-toggle="dropdown" aria-expanded="false">
                            Tahun
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="./index.php?page=answer_survey&id=<?= $_GET['id']; ?>&thn=2021">2021</a>
                            <a class="dropdown-item" href="./index.php?page=answer_survey&id=<?= $_GET['id']; ?>&thn=2022">2022</a>
                            <a class="dropdown-item" href="./index.php?page=answer_survey&id=<?= $_GET['id']; ?>&thn=2023">2023</a>
                            <a class="dropdown-item" href="./index.php?page=answer_survey&id=<?= $_GET['id']; ?>&thn=2024">2024</a>
                            <a class="dropdown-item" href="./index.php?page=answer_survey&id=<?= $_GET['id']; ?>&thn=2025">2025</a>
                        </div>
                    </div>
                </div>
                <div class="card-header">
                    <h3 class="card-title"><b>Survey Questionaire</b></h3> <br>
                    <p>Tahun : </p>

                </div>
                <form action="" id="manage-survey">
                    <input hidden type="text" name="start_date" value="<?= $start_date ?>">
                    <input type="hidden" name="survey_id" value="<?php echo $id ?>">
                    <div class="card-body ui-sortable">
                        <?php
                        $question = $conn->query("SELECT * FROM questions where survey_id = $id order by abs(order_by) asc,abs(id) asc");
                        while ($row = $question->fetch_assoc()) :
                        ?>
                            <div class="callout callout-info">
                                <h5><?php echo $row['question'] ?></h5>
                                <div class="col-md-12">
                                    <input type="hidden" name="qid[<?php echo $row['id'] ?>]" value="<?php echo $row['id'] ?>">
                                    <input type="hidden" name="type[<?php echo $row['id'] ?>]" value="<?php echo $row['type'] ?>">
                                    <?php
                                    if ($row['type'] == 'radio_opt') :
                                        foreach (json_decode($row['frm_option']) as $k => $v) :
                                    ?>
                                            <div class="icheck-primary">
                                                <input type="radio" id="option_<?php echo $k ?>" name="answer[<?php echo $row['id'] ?>]" value="<?php echo $k ?>" checked="">
                                                <label for="option_<?php echo $k ?>"><?php echo $v ?></label>
                                            </div>
                                        <?php endforeach; ?>
                                        <?php elseif ($row['type'] == 'check_opt') :
                                        foreach (json_decode($row['frm_option']) as $k => $v) :
                                        ?>
                                            <div class="icheck-primary">
                                                <input type="checkbox" id="option_<?php echo $k ?>" name="answer[<?php echo $row['id'] ?>][]" value="<?php echo $k ?>">
                                                <label for="option_<?php echo $k ?>"><?php echo $v ?></label>
                                            </div>
                                        <?php endforeach; ?>
                                    <?php else : ?>
                                        <div class="form-group">
                                            <textarea name="answer[<?php echo $row['id'] ?>]" id="" cols="30" rows="4" class="form-control" placeholder="Write Something Here..."></textarea>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        <?php endwhile; ?>
                    </div>
                </form>
                <div class="card-footer border-top border-success">
                    <div class="d-flex w-100 justify-content-center">
                        <button class="btn btn-sm btn-flat bg-gradient-primary mx-1" form="manage-survey">Submit
                            Answer</button>
                        <button class="btn btn-sm btn-flat bg-gradient-secondary mx-1" type="button" onclick="location.href = 'index.php?page=survey_widget'">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $('#manage-survey').submit(function(e) {
        e.preventDefault();

        // Periksa nilai start_date sebelum melakukan AJAX request
        console.log('start_date value:', $('input[name="start_date"]').val());

        // Menambahkan data ke formulir
        $(this).append('<input type="hidden" name="start_date" value="' + $('input[name="start_date"]').val() + '">');

        // Melakukan AJAX request
        start_load();
        $.ajax({
            url: 'ajax.php?action=save_answer',
            method: 'POST',
            data: $(this).serialize(),
            success: function(resp) {
                if (resp == 1) {
                    alert_toast("Thank You.", 'success')
                    setTimeout(function() {
                        location.href = 'index.php?page=survey_widget'
                    }, 2000)
                }
            }
        })
    });
</script>