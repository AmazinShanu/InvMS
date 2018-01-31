<%@include file="header.jsp"%>
<section id="content">
<div class="page page-forms-validate">
    <!-- row -->
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <section class="boxs">
                <div class="boxs-header">
                    <h3 class="custom-font hb-green">
                        <strong>User </strong>Registration</h3>
                </div>
                <div class="boxs-body">

                    <form name="form1" role="form" id="saveUserForm" novalidate="">
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty label-floating">
                                <label for="name"> Name : </label>
                                <input type="text" name="name" id="name" class="form-control "
                                       data-parsley-trigger="change"
                                       data-parsley-range="[4, 20]" required="" data-parsley-id="5732">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="date">DOB : </label>


                                <input type="text" name="dateOfBirth" id="date" class="form-control "
                                       data-parsley-trigger="change" data-parsley-range="[10,10]" required=""
                                       data-parsley-id="5737">


                            </div>

                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label></label>
                                <select name="Gender" id="gender" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">Select Gender</option>
                                    <option value="M">Male</option>
                                    <option value="F">Female</option>
                                </select>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label></label>
                                <select name="userType" id="type" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">User Type</option>
                                    <option value="CUS">Customer</option>
                                    <option value="TRP">Transporter</option>
                                </select>
                                <span class="material-input"></span></div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="adhar">Adhar: </label>
                                <input type="number" name="aadhaar" id="adhar" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[12, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                           <!-- <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="address">Address: </label>
                                <input type="text" name="address" id="address" class="form-control"
                                       data-parsley-trigger="change" data-parsley-range="[4, 200]" required=""
                                       data-parsley-id="6084">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>-->
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="email">Email: </label>
                                <input type="email" name="email" id="email" class="form-control"
                                       data-parsley-trigger="change" required="" data-parsley-id="2714">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="phone">Phone : </label>
                                <input type="number" name="primaryPhone" id="phone" class="form-control parsley-error"
                                       placeholder="(XXX) XXXX XXX" maxlength="10"
                                       data-parsley-length="[10, 10]"
                                       data-parsley-trigger="change" required="" data-parsley-id="7030">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="alterphone">Alternative Phone : </label>
                                <input type="number" name="alternatePhone" id="alterphone"
                                       class="form-control" placeholder="(XXX) XXXX XXX" maxlength="10"
                                       data-parsley-length="[10, 10]"
                                       data-parsley-trigger="change" data-parsley-id="7030">

                            </div>

                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <button type="submit" class="btn btn-raised btn-primary" id="saveUser">Register User</button>

                            </div>

                        </div>

                    </form>
                </div>
                <div class="loadingDiv" style="display: none;">
                    <div>
                        <h7>Please wait...</h7>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
 </section>
<%@include file="footer.jsp"%>
<script>

$(function()
{
	$('#navigation li').removeClass('active open');
    $('#navigation li').removeClass('active');
   
    $('#mainUser').addClass('active open');
    $('#innerUser').addClass('active');
});

    $('#saveUserForm').parsley().subscribe('parsley:field:validate', function () {
        if ($('#saveUserForm').parsley().isValid()) {
            $('#saveUser').prop('disabled', false);
        } else {
            $('#saveUser').prop('disabled', false);
        }
    });


    $(function () {
        $("#date").datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-mm-yy'
        });
    });

    $("#saveUserForm").submit(function (event) {



            $('.loadingDiv').show();
        $('#saveUser').attr('disabled', true);
        event.preventDefault();

        $.ajax({
            url: 'http://localhost:8080/users/register',
            type: 'post',
            data: $(this).serialize(),
            success: function (result) {
                $('.loadingDiv').hide();
                swal("Done", "You have been Registered", "success");
                $('#saveUserForm').each(function () {
                    this.reset();
                })
                $('#saveUser').attr('disabled', false);
            },
            error: function (err) {
                $('.loadingDiv').hide();
                swal(
                    'Oops...',
                    'Something went wrong!',
                    'error'
                )
                $('#saveUser').attr('disabled', false);
            }
        });

    });

    //$('.nav-profile').trigger('click');


</script>

