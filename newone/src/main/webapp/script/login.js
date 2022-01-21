$(document).ready(function () {
   
    $("#login").click(function () {
       var password=$("#inputEmail").val();
       var email=$("#inputPassword").val();
        $.ajax({
            url: "login",
            
            data: {password: password, email: email},
            type: 'POST',
            success: function (data, textStatus, jqXHR) {
                window.location = "/salleJSP.jsp";
               $("#reference").val("");
                $("#marque").val("");
               $("#dateAchat").val(new Date());
               $("#inlineFormCustomSelectPref").val("0");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(textStatus);
                
            }
        });
    }

);

   
});


  