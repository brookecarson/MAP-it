function validateLogin(){
    let admin_username = document.getElementById("username").value;
    let admin_pass = document.getElementById("password").value;

    if(!admin_pass || !admin_username)
    {
        window.alert("Please fill out every field in the Admin Login Form!");
        return false;
    }

    if(!(admin_username === "mjamil" && admin_pass === "MAP-it"))
    {
        window.alert("Incorrect Username or Password");
        return false;
    }

    else{
        window.alert("Successful Login");
        return true;
    }
}

function validateRegistration(){
    let regis_code = document.getElementById("code").value;

    if(!(regis_code === "1111"))
    {
        window.alert("Incorrect Registration Code");
        return false;
    }

    else{
        window.alert("Successful Registration");
        return true;
    }



}
