<?php include('db_connect.php') ?>
<?php include('./header.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Register</title>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>

</head>
<style>
    body {
        width: 100%;
        height: calc(100%);
        position: fixed;
        top: 0;
        left: 0
            /*background: #007bff;*/
    }

    main#main {
        width: 100%;
        height: calc(100%);
        display: flex;
    }
</style>

<body>


    <main id="main" class="shadow-lg">

        <div class="align-self-center col-lg">
            <div id="login-center" class="justify-content-center">
                <div class="card shadow-lg justify-content-center col-md-4 my-5 mx-auto">

                    <div class="card-body text-center my-2">
                        <h3>Create Account</h3>
                        <form action="regis.php" id="manage_user" method="post">
                            <div class="form-group mb-3">
                                <input type="text" class="form-control rounded-pill" name="firstname" aria-describedby="emailHelp" placeholder="Firstname" required>
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control rounded-pill" name="lastname" aria-describedby="emailHelp" placeholder="Lastname" required>
                            </div>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control rounded-pill" name="email" placeholder="Enter your email address..." aria-describedby="emailHelp" required>
                                <small id="#msg"></small>
                            </div>
                            <div class="form-group row mb-3">
                                <select name="type" id="type" class=" custom-select rounded-pill">
                                    <option value="3">
                                        Mahasiswa
                                    </option>
                                    <option value="2">
                                        Staff/Karyawan
                                    </option>
                                    <option value="4">Dosen
                                    </option>
                                    <option value="5">Mitra
                                    </option>
                                    <option value="6">Alumni
                                    </option>
                                </select>
                                <div class="col-sm-6 mb-3 mt-2 mb-sm-0">

                                    <input type="password" class="form-control rounded-pill" name="password" placeholder="Enter your password">
                                    <small></i></small>
                                </div>
                                <div class="col-sm-6 mt-2 ">
                                    <input type="password" class="form-control rounded-pill" name="cpass" placeholder="Confirm password">
                                    <small id="pass_match" data-status=''></small>
                                </div>
                            </div>
                            <hr>
                            <button class="btn btn-primary mr-2">Save</button>
                        </form>
                        <div class="text-center">
                            <a class="small" href="./login.php">Have Account? Login!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- <script>
        $('[name="password"],[name="cpass"]').keyup(function() {
            var pass = $('[name="password"]').val()
            var cpass = $('[name="cpass"]').val()
            if (cpass == '' || pass == '') {
                $('#pass_match').attr('data-status', '')
            } else {
                if (cpass == pass) {
                    $('#pass_match').attr('data-status', '1').html('<i class="text-success">Password Matched.</i>')
                } else {
                    $('#pass_match').attr('data-status', '2').html(
                        '<i class="text-danger">Password does not match.</i>')
                }
            }
        })

        function displayImg(input, _this) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#cimg').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
        $('#manage_user').submit(function(e) {
            e.preventDefault()
            $('input').removeClass("border-danger")
            start_load()
            $('#msg').html('')
            if ($('#pass_match').attr('data-status') != 1) {
                if ($("[name='password']").val() != '') {
                    $('[name="password"],[name="cpass"]').addClass("border-danger")
                    end_load()
                    return false;
                }
            }
            $.ajax({
                url: 'ajax.php?action=save_user',
                data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                success: function(resp) {
                    if (resp == 1) {
                        alert_toast('Data successfully saved.', "success");
                        setTimeout(function() {
                            location.replace('login.php')
                        }, 750)
                    } else if (resp == 2) {
                        $('#msg').html("<div class='alert alert-danger'>Email already exist.</div>");
                        $('[name="email"]').addClass("border-danger")
                        end_load()
                    }
                }
            })
        })
    </script> -->
</body>

</html>