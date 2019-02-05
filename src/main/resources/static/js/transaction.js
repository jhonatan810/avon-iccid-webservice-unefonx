 $(document).ready(function(){
	 
	 var rowCount = $('#tabRe tr').length;
	 
	 if(rowCount == 1){
		 $( "<style>.table-responsive {height:auto;}</style>" ).appendTo( "head" )
	 }else{
		 $( "<style>.table-responsive {height:400px;}</style>" ).appendTo( "head" )
	 }
	    
	  function muestraLoading(){
			var divloading = document.getElementById('div-load');
			divloading.style.display = 'block';
	  }
	  
	  
	  function ocultaLoading(){
			var divloading = document.getElementById('div-load');
			divloading.style.display = 'none';
	  }
	  
	  $('#cboDate').on('change', function (e) {
		  muestraLoading();
		  
		    var optionSelected = $("option:selected", this);
		    var valueSelected = this.value;
		    
		    $.ajax({
		        type: "POST",
		        url: "reportPeriod",
		        data: valueSelected,
		        dataType: "json",
		        contentType: "application/json; charset=utf-8",
		        success: function (responseJson) { 
		        	$("#myTable tr").remove();
		        	var sum=0;
		        	$.each(responseJson, function(index, value) {	 
		        		  var nowDate = new Date(value['fechaRecarga']);
		        		  nowDate.setDate(nowDate.getDate() + 1);

		        		  var markup = "<tr><td>"+value['iccid']+"</td><td>$"+value['monto']+"</td><td>" +  nowDate.format("dd-mmm-yyyy") + "</td><td>$" + value['comision'] + "</tr>";
		        	       
		        		   sum += value['comision'];
		        		   $("table tbody").append(markup);
	  		  		});
		        	
		        	$("#lblComision").html(sum);
		        },
		        failure: function () { 
		        	alert("Ocurrio un error al guardar los ICCID´s"); 
		        	ocultaLoading();
		        },complete : function(xhr, status) {
      		    	ocultaLoading();
      		    }
		        
		    });
		    console.log("Termina change");
		});
	 
	 $("#btnAgregar").keypress(function(e) {
	        //no recuerdo la fuente pero lo recomiendan para
	        //mayor compatibilidad entre navegadores.
		
	        var code = (e.keyCode ? e.keyCode : e.which);
	        console.log(code);
	        if(code==13){
	        	console.log("Enters");
	        	return false;
	        }
	        
	        if(code==32){
	        	console.log("Espacio");
	        	return false;
	        }
	    });
	 
	 
	  
	  $(".confirm-record").click(function(){
		  muestraLoading();
		  var size = 0;   
		  var recArray = [];
		  var id; 
		 
		  $("#tabRe tbody tr").each(function (index) {
			 
              $(this).children("td").each(function (index2) {
            	  
            	  switch (index2) {
	                  case 0:
	                	  id = $(this).text();
	                	  if(id == 1){
	                		  recArray.push([]);
	                	  }
	                      break;
                  }
            	  
            	  if(id == 1){
            		  recArray[size][index2] = $(this).text()+""; 
            	  }
              })
              if(id == 1){
            	  size = size + 1;
            	  id = -1;
              }
       });
		  
		  for(var i=0; i<recArray.length; i++) {
			    for(var j=0; j<recArray[i].length; j++) {
			      console.log("[] "+recArray[i][j]);
			    }
			}
		  
		  if(recArray.length == 0){
			  alert("No hay nuevos ICCID's por registrar");
			  ocultaLoading();
			  return;
		  }
		  
		  
		  $.ajax({
		        type: "POST",
		        url: "save",
		        data: JSON.stringify(recArray),
		        dataType: "json",
		        contentType: "application/json; charset=utf-8",
		        success: function (data) { 
		        	
		        	 alert("Los ICCID's se guardaron correctamente",
		        			    {
		        			        label: "Aceptar",
		        			        success: function () {
		        			        	location.reload();
		        			        }
		        			    }
		        			);
		        },
		        failure: function () { 
		        	alert("Ocurrio un error al guardar los ICCID´s"); 
		        	ocultaLoading();
		        },complete : function(xhr, status) {
      		    	ocultaLoading();
      		    }
		        
		});
		  
	  });
	  
	  
      $(".add-row").click(function(){
    	
          var noRepre = $("#noRepre").val();
          var nombre = $("#nomRepre").val();
          var iccid = $("#iccid").val();
          var nombreUsuario = $("#nombreUsuario").val();
          
          if(noRepre == ""){
        	  alert("Ingresa tu número de representante."); 
        	  return;
          }
          else if(noRepre.length <8){ 
        	  alert("El número de Representante debe contener 8 dígitos"); 
           	  return;
          }
          
          if(nombre == ""){
        	  alert("El nombre de la Representante no puede estar vacío"); 
              return;
          }
          
          if(iccid == ""){
        	   alert("Ingresa un ICCID"); 
          	   return;
          }
          else if(iccid.length < 20){ 
        	  alert("El ICCID deber contener 20 dígitos"); 
        	  return;
          }
          
          if(nombreUsuario == ""){
        	   alert("Ingresa un nombre de usuario chip");  
        	   return;
          }
          else if(nombreUsuario.length < 3 ){ 
        	   alert("El nombre de usuario debe contener más de 3 caracteres");   
        	   return;
          }
          
          
          var existe = false;
          $("#tabRe tbody tr").each(function (index) {
                 $(this).children("td").each(function (index2) {
                     switch (index2) {
                         case 3:
                        	 if($(this).text() == iccid)
                        		 existe = true;
                             break;
                    }
                 })
          })
          if(existe){
        	  alert("El ICCID ya esta registrado");
        	  return;
          } 
          
          var markup = "<tr><td style='display: none;'>1</td><td>"+noRepre+"</td><td>" + nombre + "</td><td>" + iccid + "</td><td>" + nombreUsuario + "</td></tr>";
          $("table tbody").append(markup);
          $("#iccid").val("");
          $("#nombreUsuario").val("");
          
          $( "<style>.table-responsive {height:400px;}</style>" ).appendTo( "head" )
          
      });
  });    
  

