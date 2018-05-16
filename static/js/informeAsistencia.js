/*document.getElementById('btn').addEventListener("click", asistenciaPersona);
document.getElementById('curso').addEventListener("change",curso);
document.getElementById('fechaInicial').addEventListener("change",fecha);
document.getElementById('fechaFinal').addEventListener("change",valida);*/

function cursojs(){
    var curso = document.getElementById("curso").value;
    if(curso != ''){
        document.getElementById("fechaInicial").disabled= false;
    }else{
        document.getElementById("fechaInicial").disabled= true;
        document.getElementById("fechaFinal").disabled= true;
        document.getElementById("fechaInicial").valueAsDate = null;
        document.getElementById("fechaFinal").valueAsDate = null;
        document.getElementById("btn").disabled= true;
    }
}

function fechajs(){
    var fi = document.getElementById("fechaInicial").value;
    if(fi != ''){
        document.getElementById("fechaFinal").disabled= false;
    }
}

function validajs() {
    var fi = document.getElementById("fechaInicial").value;
    var ff = document.getElementById("fechaFinal").value;
    if(fi>ff){
        document.getElementById("btn").disabled= true;
        document.getElementById("fechaFinal").disabled= true;
        swal({
            title: "Error!",
            text: "La fecha inicial es mayor que la fecha final!",
            type: "error",
            confirmButtonText: "Entendido",
        });
        document.getElementById("fechaInicial").valueAsDate = null;
        document.getElementById("fechaFinal").valueAsDate = null;
    }
    else{
        document.getElementById("btn").disabled= false;
    }
}
