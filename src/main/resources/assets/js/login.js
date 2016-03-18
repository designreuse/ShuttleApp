 function validate()
{
    var uname = document.getElementById("username").value;
    var pword = document.getElementById("password").value;

    if(uname == "emp01" && pword == "lawson123")
    {
        window.location = "index.html";
    }

    else
    {
    	document.getElementById("loginerr").style.display = 'inline';
    }
}