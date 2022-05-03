
function validatePhoneNumber(input_str) {
    let re = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;

    return re.test(input_str);
}

function validateEmail(input_email)
{
    let mail_format = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    return mail_format.test(input_email);
}

function sendEmail(contact_phone, contact_name, contact_email, contact_message) {
    console.log("inside sendEmail");
    Email.send({
        Host: "smtp.gmail.com",
        Username : "isbmap00@gmail.com",
        Password : "MJ-fader2014",
        To : 'isbmap00@gmail.com',
        From : contact_email,
        Subject : "ISB MAP Contact Submission - " + contact_name + " - " + contact_email + " ",
        Body : contact_message,
    }).then(
        messagetest => alert("mail sent successfully")
    );
    console.log("exiting sendEmail");
}

function validateContact() {
    let contact_phone = document.getElementById("number").value;
    let contact_name = document.getElementById("name").value;
    let contact_email = document.getElementById("email").value;
    let contact_message = document.getElementById("message").value;


    if(!contact_phone || !contact_name || !contact_message || !contact_email)
    {
        window.alert("Please fill out every field in the Contact Us Form!");
        return false;
    }

    if(!validatePhoneNumber(contact_phone))
    {
        window.alert("Please enter your phone number in the format: XXX-XXX-XXXX");
        return false;
    }

    if(!validateEmail(contact_email))
    {
        window.alert("Please enter an appropriate email in the format: johndoe123@gmail.com");
        return false;
    }

    if(contact_message.length <= 25)
    {
        window.alert("Please enter a message longer than 25 characters!");
        return false;
    }

    else {
        window.alert("Your Submission has been received!");
        sendEmail(contact_phone, contact_name, contact_email, contact_message);
        return true;
    }
}
