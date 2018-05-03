document.getElementById('numeroDocumentos').addEventListener("blur", validaForms);

function validaForms() {
    var documento = document.getElementById('numeroDocumentos').value;
    $.ajax({
        data : {'documentos':documento},
        url: '/instructorAjax',
        type: 'get',
        success: function(data) {
            if(data.length==1){
                document.getElementById("numeroDocumentos").style.borderColor = "red";
                document.getElementById("numeroDocumentos").style.boxShadow = "2px 2px 2px 2px red";
                document.getElementById("error").style.color = "red";
                document.getElementById("error").textContent = 'Este instructor ya esta creado';
                document.getElementById("numeroDocumentos").focus();
            }else{
                document.getElementById("numeroDocumentos").style.borderColor = "silver";
                document.getElementById("numeroDocumentos").style.boxShadow = "";
                document.getElementById("error").textContent = '';
            }
        }
    });
}
