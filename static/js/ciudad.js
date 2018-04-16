document.getElementById('departamento').addEventListener("change", ciudad_departamento);
document.getElementById('ciudad').addEventListener("change", barrio_ciudad);
document.getElementById('barrio').addEventListener("change", creaBarrio);
function ciudad_departamento() {
    id = document.getElementById("departamento").value;
    if (id != ''){
        document.getElementById("ciudad").disabled = false;
        document.getElementById("barrio").disabled = false;
        $.ajax({
            data : {'id':id},
            url: '/ciudadesAjax',
            type: 'get',
            success: function(data){
                var select = $('#ciudad').html("<option value='' selected>Ciudad de residencia...</option>");
                for (var i = 0; i < data.length ; i++){
                    select.append('<option value="'
                        + data[i].pk
                        + '">'
                        + data[i].fields.ciudad
                        + '</option>' );
                }
            }
        });

    }else{
        var select = $('#ciudad').html("<option value='' selected>Ciudad de residencia...</option>");
        var select = $('#barrio').html("<option value='' selected>Barrio...</option>");
        document.getElementById("ciudad").disabled = true;
        document.getElementById("barrio").disabled = true;
    }
}

function barrio_ciudad() {
    id = document.getElementById("ciudad").value;
    if (id != ''){
        $.ajax({
            data : {'id':id},
            url: '/barrioCiudadAjax',
            type: 'get',
            success: function(data){
                var select = $('#barrio').html("<option value='' selected>Barrio...</option>");
                for (var i = 0; i < data.length ; i++){
                    select.append('<option value="'
                        + data[i].pk
                        + '">'
                        + data[i].fields.barrio
                        + '</option>' );
                }
                select.append('<option class="fa fa-plus" value="01"> &#xf067; Agregar</option>')
            }
        });
    }
}


function creaBarrio(){
        id = document.getElementById("barrio").value;
        if(id == "01"){
            $('#modal').modal('show');
        }
        else{
            $('#modal').modal('hide');
        }
    }