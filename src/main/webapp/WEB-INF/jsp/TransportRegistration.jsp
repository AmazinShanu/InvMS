<%@include file="header.jsp"%>
<section id="content">
	<div class="page page-forms-validate">
		<!-- row -->
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<section class="boxs">
					<div class="boxs-header">
						<h3 class="custom-font hb-green">
							<strong>Transport </strong>Registration
						</h3>
					</div>
					<div class="boxs-body">

						<form name="form1" role="form" id="saveTransportForm"
							novalidate="">
							<div class="row">
								<div
									class="form-group col-md-3 col-xs-12 is-empty label-floating">
									<label for="id"> ID : </label> <input type="number" name="id"
										id="id" class="form-control " data-parsley-trigger="change"
										data-parsley-length="[4, 12]" required=""
										data-parsley-id="5732">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="regName"> Register Name : </label> <input
										type="text" name="regName" id="regName" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[4, 12]"
										required="" data-parsley-id="5732">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div
									class="form-group col-md-3 col-xs-12 is-empty label-floating">
									<label for="shortName">Short Name </label> <input type="text"
										name="shortName" id="shortName" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[4, 12]"
										required="" data-parsley-id="5732">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div
									class="form-group col-md-3 col-xs-12 is-empty label-floating">
									<label for="shortName">Register Number</label> <input
										type="text" name="regNo" id="regNo" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[4, 12]"
										required="" data-parsley-id="5732">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="maxCapacity">PAN Number</label> <input type="text"
										name="panNo" id="panNo" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[4, 12]"
										required="" data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="logisticNumber">GST Number </label> <input
										type="text" name="gstNo" id="gstNo" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[15, 15]"
										required="" data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>

								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="ownerName">Owner Name </label> <input type="text"
										name="ownerName" id="ownerName" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[4, 25]"
										required="" data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="ownerMobileNo">Owner Mobile No</label> <input
										type="number" name="ownerMobileNo" id="ownerMobileNo"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[10, 10]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="ownerAddress">Owner Address</label> <input
										type="text" name="ownerAddress" id="ownerAddress"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[4, 150]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>

								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="transportAddress">Transport Address</label> <input
										type="text" name="transportAddress" id="transportAddress"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[2, 150]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="contactPerson">Contact Person</label> <input
										type="text" name="contactPerson" id="contactPerson"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[2, 100]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="contactMobileNo">Contact Mobile No</label> <input
										type="text" name="contactMobileNo" id="contactMobileNo"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[10, 10]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>


								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="officeNo">officeNo No</label> <input type="number"
										name="officeNo" id="officeNo" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[10, 10]"
										required="" data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>


								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="noOfVehicles">Number of Vehicles</label> <input
										type="number" name="noOfVehicles" id="noOfVehicles"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[1, 10]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>


								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="transporterType">Transporter Type</label> <select
										name="transporterType" id="transporterType"
										class="form-control mb-10" data-parsley-trigger="change"
										required="" data-parsley-id="1203">
										<option value="">Select Transporter Type</option>
										<option value="TP1">TP1</option>
										<option value="TP2">TP2</option>
									</select> <span class="material-input"></span>
								</div>

							</div>



							<div class="row">

								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="industryType">Industry Type</label> <select
										name="industryType" id="industryType"
										class="form-control mb-10" data-parsley-trigger="change"
										required="" data-parsley-id="1203">
										<option value="">Select Industry Type</option>
										<option value="IN1">IN1</option>
										<option value="IN2">IN2</option>
									</select> <span class="material-input"></span>
								</div>

								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="isAssociation">IS Association</label> <select
										name="isAssociation" id="isAssociation"
										class="form-control mb-10" data-parsley-trigger="change"
										required="" data-parsley-id="1203">
										<option value="">Select Association</option>
										<option value="Y">Yes</option>
										<option value="N">NO</option>
									</select> <span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="isActive">Active/Inactive</label> <select
										name="isActive" id="isActive" class="form-control mb-10"
										data-parsley-trigger="change" required=""
										data-parsley-id="1203">
										<option value="">Is Active</option>
										<option value="Y">Yes</option>
										<option value="N">NO</option>
									</select> <span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<button type="submit" class="btn btn-raised btn-primary"
										id="saveTransporter">Register Transport</button>
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
   
    $('#mainTransport').addClass('active open');
    $('#innerTransport').addClass('active');
});

    $('#saveTransportForm').parsley();
   



    $("#saveTransportForm").submit(function (event) {
            $('.loadingDiv').show();
        $('#saveTransporter').attr('disabled', true);
        event.preventDefault();

        $.ajax({
            url: 'http://localhost:8080/transporters/new',
            type: 'post',
            contentType:"application/json; charset=utf-8",
            data: $(this).serialize(),
            success: function (result) {
                $('.loadingDiv').hide();
                swal("Done", "Transporter has been Registered", "success");
                $('#saveTransporter').each(function () {
                    this.reset();
                })
                $('#saveTransporter').attr('disabled', false);
            },
            error: function (err) {
                $('.loadingDiv').hide();
                swal(
                    'Oops...',
                    'Something went wrong!',
                    'error'
                )
                $('#saveTransporter').attr('disabled', false);
            }
        });

    });

    //$('.nav-profile').trigger('click');


</script>

