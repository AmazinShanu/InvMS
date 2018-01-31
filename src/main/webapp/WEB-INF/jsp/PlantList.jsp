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
                        <strong>Plant </strong>List</h3>
                </div>
                <div class="boxs-body">
                    <table id="searchTextResults" class="display nowrap table table-custom default"
                           style="width: 100%;">
                        <thead>
                        <tr>
                            <th>Actions</th>
                            <th>ID</th>
                            <th>Plant Name</th>
                            <th>Short Name</th>
                            <th>Type</th>
                            <th>Logistic Contact</th>
                            <th>logistic Number</th>
                            <th>Plant Address</th>
                            <th>Truck Provision</th>
                            <th>Contact Person</th>
                            <th>Contact Number</th>
                            <th>Daily Requirement</th>
							<th>Transporter Type</th>
							<th>Industry Type</th>
					       <th>Active/Inactive</th>
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
    <div class="modal-dialog" style="width: 60%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Update Plant</h4>
            </div>
            <div class="modal-body">
                <form name="form1" role="form" id="updatePlant" novalidate="">
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
										id="savePlant">Update Plant</button>
								</div>
							</div>

                </form>
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
    
     $('#mainPlant').addClass('active open');
     $('#innerRegisterPlantist').addClass('active');
		});

    $(document).ready(function () {

        $.ajax({
            url: 'http://localhost:8080/plants/all',
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
                                    data = '<button type = "button" value="' + full["name"] + '" rel = "tooltip" title = "Edit Data" class = "btn btn-info btn-simple btn-xs" onclick="editPlant(this.value)" >Edit</button>'
                                        + '<button type = "button" id="' + full["id"] + '" rel = "tooltip" title = "Delete Data" class = "btn btn-info btn-simple btn-xs" onclick="deletedata(this.id)" >Delete</button>';
                                }

                                return data;
                            }
                        },
                        {'data': 'id'},
                        {'data': 'name'},
                        {'data': 'shortName'},
                       
                        {'data': 'type'},
                        {'data': 'logisticContact'},
                        {'data': 'logisticNumber'},
                        {
                        	'data': 'plantAddress',
                        	"render": function(data, type, row){
                                return data.split( ',').join(","+"<br/>");
                                
                               
                            }
                        	
                        
                        
                        },
                        {'data': 'truckProvision'},
                        {'data': 'contactPerson'},
                        {'data': 'contactNumber'},
                        {'data': 'dailyRequirement'},
                        {'data': 'transporterType'},
                        {'data': 'industryType'},
                        {
                        	'data': 'isActive',
                        
                        	 
                        		'render': function (isActive) {
                                    if (isActive == 'Y') {
                                        return 'YES'
                                    }
                                    else {
                                        return 'NO'
                                    }
                                } 
                        }

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
    			  title: 'Are you sure?',
    			
    			  type: 'warning',
    			  showCancelButton: true,
    			  confirmButtonText: 'Yes, delete it!',
    			  cancelButtonText: 'No, keep it'
    			}).then((result) => 
    			{
    			  if (result) 
    			  {
    				    				  
    				  $.ajax({
    					  
    					  url: 'http://localhost:8080/plants/delete/'+ id,
    			            method: 'DELETE',
    			            contentType:"application/json; charset=utf-8",
    			            success: function (result) {
    			            	
    			            		  setTimeout(function () {
    			            		    swal("Plant has been deleted");
    			            		  }, 3000);
    			            		  location.reload();
    			            }
    				   

    					  
    				  });
    				  
    			    
    			  // result.dismiss can be 'overlay', 'cancel', 'close', 'esc', 'timer'
    			  } else if (result.dismiss === 'cancel') {
    			    swal(
    			      'Cancelled',
    			      'Your plant is safe :)',
    			      'error'
    			    )
    			  }
    			})
    }


    function editPlant(value) {
        if ('undefined' != typeof value) {

            $.getJSON('http://localhost:8080/plants/name/' + value , function (obj) {

                $('#id').val(obj.id);
                $('#name').val(obj.name);

                $('#shortName').val(obj.shortName);

                $('#type').val(obj.type);

                $('#logisticContact').val(obj.logisticContact);
                $('#type').val(obj.type);
                $('#logisticNumber').val(obj.logisticNumber);
                $('#plantAddress').val(obj.plantAddress);
                $('#truckProvision').val(obj.truckProvision);
                $('#contactPerson').val(obj.contactPerson);
                $('#contactNumber').val(obj.contactNumber);
                $('#dailyRequirement').val(obj.dailyRequirement);
                $('#transporterType').val(obj.transporterType);
                $('#industryType').val(obj.industryType);
                $('#isActive').val(obj.isActive);
               
                $('#myModal').modal('show');


            }).fail(function () {
                alert('Unable to fetch data, please try again later.')
            });

        } else alert('Unknown row id.');

    }


    $('#updatePlant').parsley();


    $("#updatePlant").submit(function (event) {
        $('.loadingDiv').show();
        
        event.preventDefault();
        $.ajax({
            url: 'http://localhost:8040/plants/edit',
            type: 'PUT',
            dataType: 'json',
         
            data: $(this).serialize(),
            
            success: function (result) {
                $('.loadingDiv').hide();
                swal("Done", "Plant Updated", "success");
                
              
            },
            error: function (jqXHR) {
                $('.loadingDiv').hide();
               
                swal(
                    'Oops...',
                    'Something went wrong!',
                    'error'
                )
               
            }
        });
    });

</script>
