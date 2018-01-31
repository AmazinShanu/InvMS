<%@include file="header.jsp"%>
<section id="content">
<div class="page page-forms-validate">
    <!-- bradcome -->

    <!-- row -->
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <section class="boxs ">
                <div class="boxs-header">
                    <h3 class="custom-font hb-green">
                        <strong>Vehicle </strong>List</h3>
                </div>
                <div class="boxs-body">
                    <table id="searchTextResults" class="display nowrap table table-custom default"
                           style="width: 100%;">
                        <thead>
                        <tr>
                            <!-- <th>Actions</th>
                            <th>ID</th> -->
 							<th>Action</th>
                            <th>Registration NO</th>
                            <th>Model</th>
                            <th>Type</th>
                            <th>SubType</th>
                            <th>MaxCapacity</th>
                            <th>MinCapacity</th>
                            <th>isCanter</th>
                            <th>Wheels</th>
                            <th>ChasisNumber</th>
                            <th>Certified Capacity</th>
                            <th>Manufactured Year</th>
                            <th>TagID</th>
                            <th>IMEI</th>
                            <th>GPS Number</th>
                            <th>GPS Device Number</th>
                            <th>Blocked</th>
                            <th>Available</th>
                            <th>CreatedBy</th>
                            <th>manufacturer</th>
                            


                        </tr>
                        </thead>
                    </table>
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


<!-- Modal Core -->
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
     data-backdrop="false">
    <div class="modal-dialog modal-lg" style="width: 60%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Update User</h4>
            </div>
            <div class="modal-body">
                  <form name="form1" role="form" id="updateVehicleForm" novalidate="">
                        <div class="row">
                            <div class="form-group col-md-3 col-xs-12 is-empty label-floating">
                                <label for="registrationNumber"> Registration Number : </label>
                                <input type="text" name="registrationNumber" id="registrationNumber" class="form-control">
                                       
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
                                   <!-- <div class="form-group col-md-3 col-xs-12 is-empty">
                                <label for="gpsNumber">Updated By</label>
                                <input type="text" name="updatedBy" id="updatedBy" class="form-control "
                                       data-parsley-trigger="change"  data-parsley-length="[2, 12]" required=""
                                       data-parsley-id="5737">
                                <ul class="parsley-errors-list"></ul>
                                <span class="material-input"></span></div> -->
                            <div class="form-group col-md-3 col-xs-12 is-empty">
                                <button type="submit" class="btn btn-raised btn-primary" id="savevehicle">Update Vehicle</button>

                            </div>

                        </div>


                    </form>
            </div>
            <div class="modal-footer">

            </div>
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
     $('#innerUserList').addClass('active');
		});

$('#updateVehicleForm').parsley();
  

    $(document).ready(function () {

        $.ajax({
            url: 'http://localhost:8080/vehicles/all',
            method: 'GET',
            dataType: 'json',
            success: function (data) {
                $('.loadingDiv').show();
                $.fn.dataTable.ext.errMode = 'none';
                $('#searchTextResults').dataTable({
                    data: data,
                    columns: [

                      {
                            "render": function (data, type, full, meta) {
                                if (type === 'display') {
                                    data = '<button type = "button" id="' + full["registrationNumber"] + '" rel = "tooltip" title = "Edit Data" class = "btn btn-info btn-simple btn-xs" onclick="editUser(this.id)" >Edit</button>'
                                        + '<button type = "button" id="' + full["registrationNumber"] + '" rel = "tooltip" title = "Delete Data" class = "btn btn-info btn-simple btn-xs" onclick="deletedata(this.id)" >Delete</button>';
                                }

                                return data;
                            }
                        }, 
                        {'data': 'registrationNumber'},
                        {'data': 'model'},
                        {'data': 'type'},                     
                        {'data': 'subType'},
                        {'data': 'maxCapacity'},
                        {'data': 'minCapacity'},
                        {'data': 'isCanter'},
                        {'data': 'wheels'},
                        {'data': 'chasisNumber'},
                        {'data': 'certifiedCapaity'},
                        {'data': 'manufacturedYear'},
                        {'data': 'tagID'},
                        {'data': 'imei'},
                        {'data': 'gpsNumber'},
                        {'data': 'gpsDeviceNumber'},
                        {'data': 'blocked'},
                        {'data': 'available'},
                        {'data': 'createdBy'},                      
                        {'data': 'manufacturer'}



                        /*{
                            'data': 'otp',
                            'render': function (otp) {
                                if (!otp) {
                                    return 'N/A'
                                }
                                else {
                                    return otp
                                }
                            }
                        },*/


                    ],
                    "scrollX": true,
                    "pageLength": 5
                });
                $('.loadingDiv').hide();
            }

        });
        $('.loadingDiv').hide();

    });

    function deletedata(id) {

        swal({
                title: "Are you sure ?",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel!",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function (isConfirm) {
                if (isConfirm) {

                    alert("dsfds");
                    swal("Deleted!", "Your imaginary file has been deleted.", "success");

                } else {
                    swal("Cancelled", "Your imaginary file is safe :)", "error");
                }
            });

    }


    function editUser(id) {
        if ('undefined' != typeof id) {

            $.getJSON('http://localhost:8080/vehicles/' + id, function (obj) {

                $('#registrationNumber').val(obj.registrationNumber);
                $('#model').val(obj.model);
                $('#type').val(obj.type);
                $('#subType').val(obj.subType);
                $('#maxCapacity').val(obj.maxCapacity);
                $('#minCapacity').val(obj.minCapacity);
                $('#isCanter').val(obj.isCanter);
                $('#wheels').val(obj.wheels);
                $('#chasisNumber').val(obj.chasisNumber);
                $('#certifiedCapaity').val(obj.certifiedCapaity);
                $('#manufacturedYear').val(obj.manufacturedYear);
                $('#tagID').val(obj.tagID);
                $('#imei').val(obj.imei);
                $('#gpsNumber').val(obj.gpsNumber);
                $('#gpsDeviceNumber').val(obj.gpsDeviceNumber);
                $('#blocked').val(obj.blocked);
                $('#available').val(obj.available);               
                $('#createdBy').val(obj.createdBy);
                $('#manufacturer').val(obj.manufacturer);
                $('#myModal').modal('show');


            }).fail(function () {
                alert('Unable to fetch data, please try again later.')
            });

        } else alert('Unknown row id.');

    }
   
    	 $("#updateVehicleForm").submit(function (event) {
    	        $('.loadingDiv').show();
    	        $('#savevehicle').attr('disabled', true);
    	        event.preventDefault();
    	        $.ajax({
    	            url: 'http://localhost:8080/vehicles/update',
    	            type: 'post',
    	            data: $(this).serialize(),
    	            
    	            success: function (result) {
    	                $('.loadingDiv').hide();
    	                swal("Done", "Vehicle Updated", "success");
    	                
    	                $('#savevehicle').attr('disabled', false);
    	            },
    	            error: function (jqXHR) {
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
    
   
   /*  $('#saveUserForm').parsley().subscribe('parsley:field:validate', function () {
        if ($('#saveUserForm').parsley().isValid()) {
            $('#saveUser').prop('disabled', false);
        } else {
            $('#saveUser').prop('disabled', false);
        }
    }); */


    $(function () {
        $("#date").datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-mm-yy'
        });
    });
    $(function()
    		{
    			$('#navigation li').removeClass('active open');
    		    $('#navigation li').removeClass('active');
    		   
    		    $('#mainVehicle').addClass('active open');
                $('#innerVehicleList').addClass('active');
    		});

</script>
