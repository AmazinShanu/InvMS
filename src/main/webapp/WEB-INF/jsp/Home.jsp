<%@include file="header.jsp"%>

    
        
   
  
<!-- Modal -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <form id="frmchgpass" name="form1" role="form" novalidate="">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Change Password</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" id="oldpass" placeholder="old password" class="form-control"
                               data-parsley-trigger="change"
                               required="" data-parsley-required
                               data-parsley-required="true">
                        <ul class="parsley-errors-list"></ul>
                        <span class="material-input"></span>
                    </div>
                    <div class="form-group">
                        <input type="text" id="newpass" placeholder="new password" class="form-control"
                               data-parsley-trigger="change"
                               required="" data-parsley-required
                               data-parsley-required="true">
                        <ul class="parsley-errors-list"></ul>
                        <span class="material-input"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-raised btn-success">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>
<%@include file="footer.jsp"%>

<script>
    $(document).ready(function () {
       /*  if (!$.session.get('id')) {
            window.location.href = "http://localhost:63342/LoryD/home/login.html";
        } */
       
    });
    $('#frmchgpass').parsley();
    $('#frmchgpass').submit(function (e) {
        e.preventDefault();
        var id = $.session.get('id');
        var oldpass = $('#oldpass').val();
        var newpass = $('#newpass').val();
        var contentType = "application/x-www-form-urlencoded; charset=utf-8";
        if (window.XDomainRequest) //for IE8,IE9
            contentType = "text/plain";
        $.ajax({
            url: 'http://localhost:8080/' + id + '/pwd/reset',
            type: 'post',
            dataType: 'json',
            contentType: contentType,
            data: 'oldPassword=' + oldpass + '&newPassword=' + newpass,
            success: function (data) {
                alert('kjjk');
            },
            error: function (data, textStatus, errorThrown) {
                alert('POST failed.');
            }
        });
    });
    $('#who').html($.session.get('name'));
    $('#lgout').click(function () {
        $.session.clear();
    });
    $('.nav-profile').trigger('click');
  /*  $.ajax({
        url: '../sub-pages/UserList.html',
        success: function (data) {
            $('#navigation li').removeClass('active open');
            $('#navigation li').removeClass('active');
            $('#content').html(data);
            $('#mainUser').addClass('active open');
            $('#innerUserList').addClass('active');
        }
    });*/

</script>

</body>
</html>