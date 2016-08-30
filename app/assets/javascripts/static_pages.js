$(document).ready(function(){
//    $(window).load(function(){
//        var user_name = prompt("What's your name?");
//        var fav_color = (prompt("What's your favorite color?")).toLowerCase();
//
//        var css_colors = ["aqua", "beige", "bisque", "black",
//            "blue","brown","chartreuse","coral", "crimson",
//            "cyan", "darkblue", "fuchsia", "gold", "gray",
//            "grey", "green", "indigo","lime", "magenta",
//            "maroon","navy", "olive", "orange", "pink", "purple",
//            "red", "silver", "teal", "violet", "yellow"];
//
//        if(css_colors.includes(fav_color)){
//            $("#welcome_user").append('Welcome ' + user_name +
//                '!').css("background-color", fav_color);
//        }
//        else{
//            $("#welcome_user").append('Welcome ' + user_name +
//                '!').css("background-color", "aqua");
//        };
//
//    });


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