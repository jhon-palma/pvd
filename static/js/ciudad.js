document.getElementById('departamento').addEventListener("change", ciudad_departamento);
document.getElementById('departamenton').addEventListener("change", ciudad_departamenton);
document.getElementById('ciudad').addEventListener("change", barrio_ciudad);
document.getElementById('barrio').addEventListener("change", creaBarrio);
document.getElementById('entidad').addEventListener("change", creaEntidad);
document.getElementById('grabarB').addEventListener("click", grabarb)
document.getElementById('grabarE').addEventListener("click", grabare)
function ciudad_departamento() {
    id = document.getElementById("departamento").value;
    if (id != ''){
        document.getElementById("ciudad").disabled = false;
        document.getElementById("barrio").disabled = false;
        $.ajax({
            data : {'id':id},
            url: '/asistencia/ciudadesAjax',
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
            url: '/asistencia/barrioCiudadAjax',
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
function grabarb()
    {
        var barrio = $("#barrioN").val();
        var ciudad = $("#ciudad").val();
        $.ajax({
            data : { 'barrio': barrio, 'ciudad':ciudad },
            url: '/asistencia/barrioAjax',
            type: 'get',
            success: function(dat){
                var select = $('#barrio').html("<option value='' selected>Barrio...</option>");
                for (var i = 0; i < dat.length ; i++){
                    select.append('<option value="'
                    + dat[i].pk
                    + '">'
                    + dat[i].fields.barrio
                    + '</option>' );
                }
                select.append('<option class="fa fa-plus" value="01"> &#xf067; Agregar</option>')
            }
        });
    }

function ciudad_departamenton() {
    id = document.getElementById("departamenton").value;
    if (id != ''){
        document.getElementById("ciudadn").disabled = false;
        $.ajax({
            data : {'id':id},
            url: '/asistencia/ciudadesAjax',
            type: 'get',
            success: function(data){
                var select = $('#ciudadn').html("<option value='' selected>Ciudad de nacimiento...</option>");
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
        var select = $('#ciudadn').html("<option value='' selected>Ciudad de residencia...</option>");
        document.getElementById("ciudadn").disabled = true;
    }
}

function creaEntidad(){
        id = document.getElementById("entidad").value;
        if(id == "01"){
            $('#modalE').modal('show');
        }
        else{
            $('#modalE').modal('hide');
        }
}
function grabare(){
    var entidadN = $("#entidadN").val();
    $.ajax({
        data : { 'entidadN': entidadN },
        url: '/asistencia/entidadAjax',
        type: 'get',
        success: function(dat){
            var select = $('#entidad').html("<option value='' selected>Barrio...</option>");
            for (var i = 0; i < dat.length ; i++){
                select.append('<option value="'
                + dat[i].pk
                + '">'
                + dat[i].fields.entidad
                + '</option>' );
            }
            select.append('<option class="fa fa-plus" value="01"> &#xf067; Agregar</option>')
        }
    });
}
