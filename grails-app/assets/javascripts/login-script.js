$(document).ready(function(){

    //
    $("#sex").change(function(){
        if($(this).val() == "0")
            $(this).addClass("empty");
        else
            $(this).removeClass("empty");
    })
    $("#sex").change();

    $("tsex").change(function(){
        if($(this).val() == "0")
            $(this).addClass("empty");
        else
            $(this).removeClass("empty");
    })
    $("#tsex").change();

//my login validation
    $(".login-btn").click(function(){
        if(($(".login").val() == "") || ($(".pass").val() == ""))
            $(".login").parent().addClass("has-error");
        $(".login").prev().show();
        $(".pass").parent().addClass("has-error");
        $(".pass").prev().show();
    });
//check login symbols
    $(".login").keypress(function(){
        var allowed = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
            't', 'u', 'v', 'w', 'x', 'y', 'z', '@', '.', '-', '_', '!', '#', '$', '%', '&', '/', '*', '+',
            '-', '\'', '=', '?', '^', '`', '{', '}', '|', '~', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ''];
        var login = $(this).val().toLowerCase();
        for (var i = 0; i < login.length; i++){
            var found = false;
            for (var j = 0; j < allowed.length; j++){
                if (login[i] == allowed[j])
                    found = true;
                $(this).parent().removeClass("has-input-error");
                $(this).prev().hide();
                $(this).prevAll().last().hide();
            }
            if (found == false){
                $(this).parent().addClass("has-input-error");
                $(this).prev().hide();
                $(this).prevAll().last().show();
            }
        }

    });
//check password symbols
    $(".pass").keypress(function(){
        var allowed = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
            't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ''];
        var pass = $(this).val().toLowerCase();
        for (var i = 0; i < pass.length; i++){
            var found = false;
            for (var j = 0; j < allowed.length; j++){
                if (pass[i] == allowed[j])
                    found = true;
                if ($(".bad-pass").val().length === 0)
                    $(".bad-pass").text("Bad password.");
                if ($(".good-pass").val().length === 0)
                    $(".good-pass").text("Good password.");
                $(this).parent().removeClass("has-input-error");
                $(this).prev().hide();
                $(this).prevAll().last().hide();
            }
            if (found == false){
                $(this).parent().addClass("has-input-error");
                $(this).parent().removeClass("has-warning");
                $(this).parent().removeClass("has-success");
                $(".bad-pass").empty();
                $(".good-pass").empty();
                $(this).prev().hide();
                $(this).prevAll().last().show();
            }
        }
    });
//check student registration info
    $("#sreg-btn").click(function(){
        var submit = true;
        $.each($("#stud-form input, select"),function(index, field){
            if($(field).val().trim().length === 0 || $(field).val() == "0"){
                submit = false;
                $(field).parent().addClass("has-error");
                $(field).prev().show();
            }
        });
        if (submit == true){
            return true;
        }
        else{
            return false;
        }
    });
//hide error labels
    $("#stud-form input, select").keypress(function(){
        $(this).parent().removeClass("has-error");
        $(this).prev().hide();
    });
//hide error label for select
    $("#stud-form select").change(function(){
        $(this).parent().removeClass("has-error");
        $(this).prev().hide();
    });
//check tutor registration info
    $("#treg-btn").click(function(){
        var submit = true;
        $.each($("#tut-form input, select"),function(index, field){
            if($(field).val().trim().length === 0 || $(field).val() == "0"){
                submit = false;
                $(field).parent().addClass("has-error");
                $(field).prev().show();
            }
        });
        if (submit == true){
            return true;
        }
        else{
            return false;
        }
    });
//hide error labels
    $("#tut-form input, select").keypress(function(){
        $(this).parent().removeClass("has-error");
        $(this).prev().hide();
    });
//hide error label for select
    $("#tut-form select").change(function(){
        $(this).parent().removeClass("has-error");
        $(this).prev().hide();
    });
//check student password strength
    $("#s-reg-pass").keypress(function(){
        var str = $(this).val();
        var passLength = 0;
        var hasNumbers = 0;
        var hasUpperCase = 0;
        for (var i = 0; i < str.length; i++){
            passLength++;
            if (!isNaN(str[i])){
                hasNumbers++;
            }
            else if (str[i] == str[i].toUpperCase()){
                hasUpperCase++;
            }
        }
        if ((passLength >=7 && hasNumbers >= 2 && hasUpperCase >= 1) || (passLength >=7 && hasNumbers >= 3)){
            //good pass
            $(this).parent().removeClass("has-warning");
            $(this).parent().addClass("has-success");
            $(this).prevAll().filter(".bad-pass").hide();
            $(this).prevAll().filter(".good-pass").show();
        }
        else{
            //bad pass
            $(this).parent().removeClass("has-success");
            $(this).parent().addClass("has-warning");
            $(this).prevAll().filter(".bad-pass").hide();
            $(this).prevAll().filter(".bad-pass").show();
        }
    });
//check tutor password strength
    $("#t-reg-pass").keypress(function(){
        var str = $(this).val();
        var passLength = 0;
        var hasNumbers = 0;
        var hasUpperCase = 0;
        for (var i = 0; i < str.length; i++){
            passLength++;
            if (!isNaN(str[i])){
                hasNumbers++;
            }
            else if (str[i] == str[i].toUpperCase()){
                hasUpperCase++;
            }
        }
        if ((passLength >=7 && hasNumbers >= 2 && hasUpperCase >= 1) || (passLength >=7 && hasNumbers >= 3)){
            //good pass
            $(this).parent().removeClass("has-warning");
            $(this).parent().addClass("has-success");
            $("#t-bad-pass").hide();
            $("#t-good-pass").show();
        }
        else{
            //bad pass
            $(this).parent().removeClass("has-success");
            $(this).parent().addClass("has-warning");
            $("#t-good-pass").hide();
            $("#t-bad-pass").show();
        }
    });
//validate e-mail
    $(".email").blur(function(){
        var sample = /\S+@\S+\.\S+/;
        if (sample.test($(this).val()) == false){
            //invalid email
            $(this).parent().addClass("has-error");
            $(this).prevAll().last().show();

        }
        else{
            $(this).parent().removeClass("has-error");
            $(this).prevAll().last().hide();
        }
    });
//
    $("#call-reg-btn").click(function(){

        $(".login").parent().removeClass("has-input-error");
        $(".login").prev().hide();
        $(".login").prevAll().last().hide();
        $(".bad-pass").text("Bad password.");
        $(".good-pass").text("Good password.");
        $(".pass").parent().removeClass("has-input-error");
        $(".pass").prev().hide();
        $(".pass").prevAll().last().hide();

    });

});