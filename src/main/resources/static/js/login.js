
const init = () => {
    $('#popup').hide();
}


const loginBtn = () => {
    console.log("loginBtn");

    const data = {
        "userId" : $("#userId").val(),
    }
    $.ajax({
        type: "POST",
        url: "/loginProc",
        data : data,
        success : function(res) {
            if(res === "firstLogin") {
                $("#popup").show();
            }else if (res === "success") {
                location.href = "/main";
            }
        },
        error : function(err) {
            console.log(err)
        }
    })
}



$(document).ready(function() {
    init();
    $("#loginBtn").click(loginBtn);
});

