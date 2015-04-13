$(document).ready(function(){

    $(".glyphicon").click(function(){
        if(is_user){
            $(this).toggleClass("highlighted");
            $(this).siblings().removeClass("highlighted");
        }
        else{
            $('#sign_in_modal').modal('show');
        }
    });
});