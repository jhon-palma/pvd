document.getElementById('numeroDocumento').addEventListener("blur", validaForm);

function validaForm() {
    var documento = document.getElementById('numeroDocumento').value;
    $.ajax({
        data : {'documento':documento},
        url: '/personaAjax',
        type: 'get',
        success: function(data) {
            if(data.length==1){
                document.getElementById("numeroDocumento").style.borderColor = "red";
                document.getElementById("numeroDocumento").style.boxShadow = "2px 2px 2px 2px red";
                document.getElementById("error").style.color = "red";
                document.getElementById("error").textContent = 'Ya existe una persona registrada con este documento';
                document.getElementById("numeroDocumento").focus();
            }else{
                document.getElementById("numeroDocumento").style.borderColor = "silver";
                document.getElementById("numeroDocumento").style.boxShadow = "";
                document.getElementById("error").textContent = '';
            }
        }
    });
}
