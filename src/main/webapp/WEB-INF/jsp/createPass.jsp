<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8"/>
    <link rel="icon" type="image/ico" href="../assets/images/favicon.ico"/>
    <title>Lordy Deck - Login</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport"/>
    <link rel="stylesheet" href="assets/js/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="assets/js/vendor/sweetalert/sweetalert2.css">
    <link rel="stylesheet" href="assets/css/vendor/animsition.min.css">
    <!--  Fonts and icons -->
    <!-- CSS Files -->
    <link href="assets/css/main.css" rel="stylesheet">

</head>

<body id="falcon" class="authentication">
<!-- Application Content -->
<div class="wrapper">
    <div class="header header-filter"
         style="background-image: url('assets/images/login-bg.jpg'); background-size: cover; background-position: top center;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 text-center">
                    <div class="card card-signup">
                        <form name="form1" role="form" id="savePass" novalidate="">
                            <div class="header header-primary text-center">
                                <h4>Create Password</h4>

                            </div>

                            <h3 class="mt-0">Lory Deck</h3>
                            <p class="help-block">Enter your Password</p>
                            <div class="content">
                                <div class="form-group">
                                    <input type="password" id="mp" placeholder="Password" class="form-control"data-parsley-trigger="change"
                                            required="" data-parsley-required
                                           data-parsley-required="true">
                                    <ul class="parsley-errors-list"></ul>
                                    <span class="material-input"></span>
                                </div>
                                <div class="form-group">
                                    <input type="password" id="cp" placeholder="Confirm Password" class="form-control"
                                           data-parsley-trigger="change"
                                           required="" data-parsley-required
                                           data-parsley-required="true" data-parsley-equalto="#mp">
                                    <ul class="parsley-errors-list"></ul>
                                    <span class="material-input"></span>

                                </div>

                            </div>
                            <div class="footer text-center mb-20">
                                <button type="submit" id="sp" class="btn btn-success btn-raised">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="loadingDiv" style="display: none;">
            <div>
                <h7>Please wait...</h7>
            </div>
        </div>
        <footer class="footer">

        </footer>
    </div>
</div>
<!--/ Application Content -->
<!--  Vendor JavaScripts -->
<script src="assets/js/vendor/jquery/jquery-3.1.0.min.js"></script>
<script src="assets/bundles/sweetalertscripts.bundle.js"></script>
<script src="assets/bundles/libscripts.bundle.js"></script>
<script src="assets/bundles/vendorscripts.bundle.js"></script>
<script src="assets/bundles/mainscripts.bundle.js"></script>
<script src="assets/js/vendor/parsley/parsley.min.js"></script>

<script>


    $('#savePass').parsley();
    var url = window.location.href;
    var ids = url.substring(url.lastIndexOf('?') + 1);
    //alert(id);

    $('#savePass').submit(function (e) {

        var pass = $('#mp').val();
        e.preventDefault();
        $.ajax({
            url: 'http://localhost:8080/users/' + ids + '/pwd/set',
            type: 'post',

            data: 'password=' + pass,

            success: function (data) {
                swal("Done", "Password created Successfully", "success");
            },
            error: function (err) {
                $('.loadingDiv').hide();
                swal(
                    'Oops...',
                    'Something went wrong!',
                    'error'
                )
                $('#sp').attr('disabled', false);
            }
        });

    });


</script>
</body>
</html>