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
                        <strong>User </strong>List</h3>
                </div>
                <div class="boxs-body">
                    <table id="searchTextResults" class="display nowrap table table-custom default"
                           style="width: 100%;">
                        <thead>
                        <tr>
                         	<th>ID</th>
                            <th>Code</th>
                            <th>Created By</th>
                            <th>Created Date</th>
                            <th>Description</th>
                           
                            <th>Is Deleted</th>
                            <th>Master Company ID</th>
                            <th>Modified By</th>
                            <th>Modified Date</th>
                            <th>Name</th>                            


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



 </section>
<%@include file="footer.jsp"%>
<!-- <script>
$(function()
		{
	 $('#navigation li').removeClass('active open');
     $('#navigation li').removeClass('active');
    
     $('#mainUser').addClass('active open');
     $('#innerUserList').addClass('active');
		});

    $(document).ready(function () {

        $.ajax({
            url: 'http://localhost:8080/users/all',
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
                                    data = '<button type = "button" id="' + full["id"] + '" rel = "tooltip" title = "Edit Data" class = "btn btn-info btn-simple btn-xs" onclick="editUser(this.id)" >Edit</button>'
                                        + '<button type = "button" id="' + full["id"] + '" rel = "tooltip" title = "Delete Data" class = "btn btn-info btn-simple btn-xs" onclick="deletedata(this.id)" >Delete</button>';
                                }

                                return data;
                            }
                        },
                        {'data': 'id'},
                        {'data': 'name'},
                        {'data': 'dateOfBirth'},
                        {
                            'data': 'gender',
                            'render': function (gender) {
                                if (gender == 'M') {
                                    return 'Male'
                                }
                                else {
                                    return 'Female'
                                }
                            }
                        },
                        {'data': 'address'},
                        {'data': 'aadhaar'},
                        {'data': 'email'},
                        {'data': 'primaryPhone'},
                        {'data': 'alternatePhone'},
                        {'data': 'status'},
                        {'data': 'userType'}


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

            $.getJSON('http://localhost:8080/users/' + id, function (obj) {

                $('#edit-id').val(obj.id);

                $('#name').val(obj.name);

                $('#date').val(obj.dateOfBirth);

                $('#gender').val(obj.gender);
                $('#type').val(obj.userType);
                $('#adhar').val(obj.aadhaar);
                $('#address').val(obj.address);
                $('#email').val(obj.email);
                $('#phone').val(obj.primaryPhone);
                $('#alterphone').val(obj.alternatePhone);

                $('#myModal').modal('show');


            }).fail(function () {
                alert('Unable to fetch data, please try again later.')
            });

        } else alert('Unknown row id.');

    }


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

</script>
 -->
 <script>

 
 var editor; // use a global for the submit and return data rendering in the examples
 
 $(document).ready(function() {
     editor = new jQuery.fn.dataTable.Editor( {
         ajax: "http://localhost:8050/ims-ws/masterController/allRecords",
         table: "#searchTextResults",
         fields: [ {
                 label: "id:",
                 name: "id"
             }, {
                 label: "code:",
                 name: "code"
             }, {
                 label: "createdBy:",
                 name: "createdBy"
             }, {
                 label: "createdDate:",
                 name: "createdDate"
             }, {
                 label: "description:",
                 name: "description"
             }, {
                 label: "isDeleted:",
                 name: "isDeleted",
               
             }, {
                 label: "masterCompanyId:",
                 name: "masterCompanyId"
             }, {
                 label: "modifiedBy:",
                 name: "modifiedBy",
               
             },{
                 label: "modifiedDate:",
                 name: "modifiedDate",
               
             },{
                 label: "name:",
                 name: "name",
               
             }
         ]
     } );
  
     // Activate an inline edit on click of a table cell
     $('#searchTextResults').on( 'click', 'tbody td:not(:first-child)', function (e) {
         editor.inline( this );
     } );
  
     $('#searchTextResults').DataTable( {
         dom: "Bfrtip",
         ajax: "http://localhost:8050/ims-ws/masterController/allRecords",
         order: [[ 1, 'asc' ]],
         columns: [
             {
                 data: null,
                 defaultContent: '',
                 className: 'select-checkbox',
                 orderable: false
             },
             { data: "id" },
             { data: "code" },
             { data: "createdBy" },
             { data: "createdDate" },
             { data: "description" },
             { data: "isDeleted" },
             { data: "masterCompanyId" },
             { data: "modifiedBy" },
             { data: "modifiedDate" },
             { data: "name" }
         ],
         select: {
             style:    'os',
             selector: 'td:first-child'
         },
         buttons: [
             { extend: "create", editor: editor },
             { extend: "edit",   editor: editor },
             { extend: "remove", editor: editor }
         ]
     } );
 } );
 </script>