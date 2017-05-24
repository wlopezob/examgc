$(document).ready(function(){
    function buscarEmpleado(email){
       $.post('/email/',{email:email},function(data){
          $("#tbEmployees").find("tbody").html('');
          $.each(data.listado,function(ii,oo){
              td = "";
              td += '<td><button title="Ver Detalle"  class="btn btn-xs btn-primary btnVer"><i class="fa fa-list"></i></button></td>';
              td += "<td><input id='hddId' type='hidden' value='"+oo.id+"'/>"+oo.name+"</td>";
              td += "<td>"+oo.email+"</td>";
              td += "<td>"+oo.position+"</td>";
              td += "<td>"+oo.salary+"</td>";
              $("#tbEmployees").find("tbody").append('<tr>'+td+'</tr>')
          });
       });
    }
    $("#frmEmployee").submit(function(event){
        event.preventDefault();
        email = $("#email").val();
        buscarEmpleado(email);
    });
    $("#tbEmployees tbody").on('click','.btnVer',function(){
       $this = $(this);
       id = $this.closest('tr').find("#hddId").val();
       $.getJSON('/employees/'+id,{},function(data){
          $('#myModal').modal('show');
          $("#lblName").text(data.employee.name);
          $("#lblEmail").text(data.employee.email);
          $("#lblPhone").text(data.employee.phone);
          $("#lblAddress").text(data.employee.address);
          $("#lblPosition").text(data.employee.position);
          $("#lblSalary").text("$"+data.employee.salary);
          $("#tbSkill").find("tbody").html('');
          $.each(data.skills,function(ii,oo){
              $("#tbSkill").find("tbody").append('<tr><td>'+oo.skill+'</td></tr>')
          });
       });
    });
    buscarEmpleado('');
});