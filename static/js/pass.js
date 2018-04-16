document.getElementById('psw').addEventListener("blur", validaPass);
document.getElementById('rpsw').addEventListener("blur", validaRepass);

function validaPass(){
    psw = document.getElementById("psw").value;
    if(psw.length < 8){
        document.getElementById("psw").style.borderColor = "red";
        document.getElementById("error").style.color = "red";
        document.getElementById("error").textContent = 'La nueva contraseña debe contener minímo 8 caracteres';
        document.getElementById("psw").value = "";
        document.getElementById("psw").focus();
        //document.getElementById("oculto").removeAttribute("style");
        //document.getElementById("oculto").style.display = "block";
    }else{
        document.getElementById("psw").style.borderColor = "silver";
        document.getElementById("error").textContent = '';
        //document.getElementById("oculto").style.display = "none";
    }
}

function validaRepass(){
    psw = document.getElementById("psw").value;
    repsw = document.getElementById("rpsw").value;
    if(psw == ""){
        document.getElementById("psw").style.borderColor = "red";
        document.getElementById("error").style.color = "red";
        document.getElementById("error").textContent = 'Escriba la contraseña';
        document.getElementById("psw").focus();
    }
    if(repsw == ""){
        document.getElementById("rpsw").style.borderColor = "red";
        document.getElementById("error2").style.color = "red";
        document.getElementById("error2").textContent = 'Confirme la contraseña';
        document.getElementById("rpsw").focus();
    }

    if(psw != repsw){
        document.getElementById("psw").style.borderColor = "red";
        document.getElementById("rpsw").style.borderColor = "red";
        document.getElementById("error2").style.color = "red";
        document.getElementById("error2").textContent = 'La contraseña no coincide con la confirmación';
        document.getElementById("psw").value = "";
        document.getElementById("rpsw").value = "";
        document.getElementById("psw").focus();
    }else{
        document.getElementById("rpsw").style.borderColor = "silver";
        document.getElementById("error2").textContent = '';
    }
}
