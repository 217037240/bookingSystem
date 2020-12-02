$(function (){
   $("#userList").click(function (){
       fetchList("user")
   });

    $("#appointmentList").click(function (){
        fetchList("appointment")
    });

    $("#billList").click(function (){
        fetchList("bill")
    });
});

function fetchList(type) {
    $.ajax({
        type: "GET",
        url :  "/"+type+"/list",
        success : function (data) {
            $(".panel-body").html(data);
        }
    })
}

function addForm(type){
    $.ajax({
        type: "GET",
        url :  "/"+type+"/form",
        success : function (data) {
            $(".panel-body").html(data);
        }
    })
}

function editForm(type, id) {
    $.ajax({
        type: "GET",
        url :  "/"+type+"/edit/"+id,
        success : function (data) {
            $(".panel-body").html(data);
        }
    })
}