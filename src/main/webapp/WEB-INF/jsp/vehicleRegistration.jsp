<%@include file="header.jsp"%>
<section id="content">
<div class="page page-forms-validate">
    <!-- row -->
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <section class="boxs">
                <div class="boxs-header">
                    <h3 class="custom-font hb-green">
                        <strong>Vehicle </strong>Registration</h3>
                </div>
                <div class="boxs-body">

                    <form name="form1" role="form" id="saveVehicleForm" novalidate="">
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty label-floating">
                                <label for="registrationNumber"> Registration Number : </label>
                                <input type="text" name="registrationNumber" id="registrationNumber" class="form-control "
                                       data-parsley-trigger="change"
                                       data-parsley-range="[4, 20]" required="" data-parsley-id="5732">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label></label>
                                <select name="model" id="model" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">Select Model</option>
                                    <option value="Tata Ace">Tata Ace</option>
                                    <option value="Tata Ace 2">Tata Ace 2</option>
                                </select>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label></label>
                                <select name="type" id="type" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">Select Type</option>
                                    <option value="Type 1">Type 1</option>
                                    <option value="Type 2">Type 2</option>
                                </select>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label></label>
                                <select name="subType" id="subType" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">Sub Type </option>
                                    <option value="Sub type 1">Sub type 1</option>
                                    <option value="Sub type 2">Sub type 2</option>
                                </select>
                                <span class="material-input"></span></div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="maxCapacity">Max Capacity </label>
                                <input type="number" name="maxCapacity" id="maxCapacity" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="minCapacity">Min Capacity </label>
                                <input type="number" name="minCapacity" id="minCapacity" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="isCanter">Is Canter</label>
                                <select name="isCanter" id="isCanter" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">IS isCanter</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">NO</option>
                                </select>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="wheels">Wheels </label>
                                <input type="number" name="wheels" id="wheels" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 22]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="chasisNumber">Chasis Number </label>
                                <input type="text" name="chasisNumber" id="chasisNumber" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="certifiedCapaity">Certified Capacity </label>
                                <input type="number" name="certifiedCapaity" id="certifiedCapaity" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="manufacturedYear">Manufactured Year</label>
                                <input type="text" name="manufacturedYear" id="manufacturedYear" class="form-control"
                                       data-parsley-trigger="change"
                                       data-parsley-range="[10,10]" required="" data-parsley-id="2484">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="tagID">Tag ID </label>
                                <input type="text" name="tagID" id="tagID" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>


                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="imei">IMEI </label>
                                <input type="text" name="imei" id="imei" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="gpsNumber">GPS Number</label>
                                <input type="text" name="gpsNumber" id="gpsNumber" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="gpsDeviceNumber">GPS Device Number</label>
                                <input type="text" name="gpsDeviceNumber" id="gpsDeviceNumber" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="blocked"></label>
                                <select name="blocked" id="blocked" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">IS Blocked</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">NO</option>
                                </select>
                                <span class="material-input"></span></div>



                        </div>
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="available"></label>
                                <select name="available" id="available" class="form-control mb-10"
                                        data-parsley-trigger="change" required=""
                                        data-parsley-id="1203">
                                    <option value="">IS available</option>
                                    <option value="Y">Yes</option>
                                    <option value="N">NO</option>
                                </select>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="manufacturer"></label>
                                <select name="manufacturer" id="manufacturer" class="form-control mb-10"
                                        data-parsley-trigger="manufacturer" required=""
                                        data-parsley-id="1203">
                                    <option value="">Manufacturer</option>
                                    <option value="TATA">TATA A</option>
                                    <option value="TATA 2">TATA</option>
                                </select>
                                <span class="material-input"></span></div>
							<div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="createdBy">Created By</label>
                                <input type="text" name="createdBy" id="createdBy" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div>
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <button type="submit" class="btn btn-raised btn-primary" id="savevehicle">Register Vehicle</button>

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
		   
		    $('#mainVehicle').addClass('active open');
            $('#innervehicle').addClass('active');
		});

    $('#saveVehicleForm').parsley().subscribe('parsley:field:validate', function () {
        if ($('#saveVehicleForm').parsley().isValid()) {
            $('#saveUser').prop('disabled', false);
        } else {
            $('#saveUser').prop('disabled', false);
        }
    });

    $(function () {
        $("#manufacturedYear").datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'yy-mm-dd'
            	
        });
    });
    $("#saveVehicleForm").submit(function (event) {

        $('.loadingDiv').show();
        $('#savevehicle').attr('disabled', true);
        event.preventDefault();

        $.ajax({
            url: 'http://localhost:8080/vehicles/new',
            type: 'post',
            data: $(this).serialize(),
            success: function (result) {
                $('.loadingDiv').hide();
                swal("Done", "Vehicle has been Registered", "success");
                $('#saveVehicleForm').each(function () {
                    this.reset();
                })
                $('#savevehicle').attr('disabled', false);
            },
            error: function (err) {
                $('.loadingDiv').hide();
                swal(
                    'Oops...',
                    'Something went wrong!',
                    'error'
                )
                $('#savevehicle').attr('disabled', false);
            }
        });

    });
</script>