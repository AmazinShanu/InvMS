<%@include file="header.jsp"%>
<section id="content">
	<div class="page page-forms-validate">
		<!-- row -->
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<section class="boxs">
					<div class="boxs-header">
						<h3 class="custom-font hb-green">
							<strong>Plant </strong>Registration
						</h3>
					</div>
					<div class="boxs-body">
						<form name="form1" role="form" id="savePlantForm" novalidate="">
							<div class="row">
								<div
									class="form-group col-md-3 col-xs-12 is-empty label-floating">
									<label for="id"> Plant ID : </label> <input type="number"
										name="id" id="id" class="form-control "
										data-parsley-trigger="change" data-parsley-length="[4, 12]"
										required="" data-parsley-id="5732">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="name"> Plant Name : </label> <input type="text"
										name="name" id="name" class="form-control "
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
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label>Type</label> <select name="type" id="type"
										class="form-control mb-10" data-parsley-trigger="change"
										required="" data-parsley-id="1203">
										<option value="">Select Type</option>
										<option value="MNFT">MNFT</option>
										<option value="MNFT">MNFT</option>
									</select> <span class="material-input"></span>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="maxCapacity">Logistic Contact</label> <input
										type="text" name="logisticContact" id="logisticContact"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[4, 12]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="logisticNumber">logistic Number </label> <input
										type="number" name="logisticNumber" id="logisticNumber"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[10, 10]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="plantAddress">Plant Address </label> <input
										type="text" name="plantAddress" id="plantAddress"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[4, 150]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="truckProvision">Truck Provision</label> <select
										name="truckProvision" id="truckProvision"
										class="form-control mb-10" data-parsley-trigger="change"
										required="" data-parsley-id="1203">
										<option value="">Select Truck Provision</option>
										<option value="BLKR">BLKR</option>
										<option value="TRCK">Truck</option>
									</select> <span class="material-input"></span>
								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="contactPerson">Contact Person</label> <input
										type="text" name="contactPerson" id="contactPerson"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[3, 70]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="contactNumber">Contact Number </label> <input
										type="number" name="contactNumber" id="contactNumber"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[10, 10]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>

								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="dailyRequirement">Daily Requirement</label> <input
										type="number" name="dailyRequirement" id="dailyRequirement"
										class="form-control " data-parsley-trigger="change"
										data-parsley-length="[2, 50]" required=""
										data-parsley-id="5737">
									<ul class="parsley-errors-list"></ul>
									<span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="transporterType">Transporter Type</label> <select
										name="transporterType" id="transporterType"
										class="form-control mb-10" data-parsley-trigger="change"
										required="" data-parsley-id="1203">
										<option value="">Select "Transporter Type"</option>
										<option value="DED">DED</option>
										<option value="ASC">ASC</option>
									</select> <span class="material-input"></span>
								</div>
							</div>
							<div class="row">
							<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="industryType">Select Industry Type</label> <select
										name="industryType" id="industryType"
										class="form-control mb-10" data-parsley-trigger="change"
										required="" data-parsley-id="1203">
										<option value="">Industry Type</option>
										<option value="CEM">CEM</option>
										
									</select> <span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<label for="isActive">Active/Inactive</label> <select name="isActive"
										id="isActive" class="form-control mb-10"
										data-parsley-trigger="change" required=""
										data-parsley-id="1203">
										<option value="">Is Active</option>
										<option value="Y">Yes</option>
										<option value="N">NO</option>
									</select> <span class="material-input"></span>
								</div>
								<div class="form-group col-md-3 col-xs-12 is-empty">
									<button type="submit" class="btn btn-raised btn-primary"
										id="savePlant">Register Plant</button>
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
		   
		    $('#mainPlant').addClass('active open');
            $('#innerplant').addClass('active');
		});

    $('#savePlantForm').parsley().subscribe('parsley:field:validate', function () {
        if ($('#savePlantForm').parsley().isValid()) {
            $('#savePlant').prop('disabled', false);
        } else {
            $('#savePlant').prop('disabled', false);
        }
    });
  
    $("#savePlantForm").submit(function (event) {
        $('.loadingDiv').show();
        $('#savevehicle').attr('disabled', true);
        event.preventDefault();

        $.ajax({
            url: 'http://localhost:8080/plants/new',
            type: 'post',
            data: $(this).serialize(),
            success: function (result) {
                $('.loadingDiv').hide();
                swal("Done", "Plant has been Registered", "success");
                $('#savePlantForm').each(function () {
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
                $('#savePlant').attr('disabled', false);
            }
        });

    });
</script>