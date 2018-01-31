$('#RegisterUserPage').click(RegisterUserPage);
$('#UserList').click(ShowUserList);
$('#RegisterVehiclePage').click(RegisterVehiclePage);


function RegisterUserPage() {
    $.ajax({
        url: '../sub-pages/RegisterUser.html',
        success: function (data) {
            $('#navigation li').removeClass('active open');
            $('#navigation li').removeClass('active');
            $('#content').html(data);
            $('#mainUser').addClass('active open');
            $('#innerUser').addClass('active');
        }
    });
}

function ShowUserList() {
    $.ajax({
        url: '../sub-pages/UserList.html',
        success: function (data) {
            $('#navigation li').removeClass('active open');
            $('#navigation li').removeClass('active');
            $('#content').html(data);
            $('#mainUser').addClass('active open');
            $('#innerUserList').addClass('active');
        }
    });
}

function RegisterVehiclePage() {
    $.ajax({
        url: '../sub-pages/RegisterVehicle.html',
        success: function (data) {
            $('#navigation li').removeClass('active open');
            $('#navigation li').removeClass('active');
            $('#content').html(data);
            $('#mainVehicle').addClass('active open');
            $('#innervehicle').addClass('active');
        }
    });
}

















