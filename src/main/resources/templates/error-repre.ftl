<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico" />
<meta http-equiv = "Content-Type" content = "text/html/json; charset = UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">  
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css"> 
<link rel="stylesheet" href="./css/footer.css">   
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" type="text/css" href="css/wow-alert.css">
<script type="text/javascript" src="js/wow-alert.js"></script>
<script type="text/javascript" src="js/example.js"></script>
<script src="./js/validations.js"></script>

<title>AVON - Chip </title>
    
  <style type="text/css">
  body {
  background-color: white;
  height: 500vh;
  
	} 



.modal-blanco {
    display:    none;
    position:   fixed;
    z-index:    1000;
    top:        0;
    left:       0;
    height:     100%;
    width:      100%;
    background: rgba( 255, 255, 255, .8 ) 
                url('images/pIkfp.gif') 
                50% 50% 
                no-repeat;
}

	.div-loading {
    display:    block;
    position:   fixed;
    z-index:    1000;
    top:        0;
    left:       0;
    height:     100%;
    width:      100%;
    background: rgba( 255, 255, 255, .8 ) 
                url('images/pIkfp.gif') 
                50% 50% 
                no-repeat;
} 
	      
	
	

.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 6px; 
  font-size: 16px; 
  height: 30px;   
  width: 190px;
  /* line-height: 60px; */ 
}  
.main-div {
  background: #FFFFFF none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  margin: 10px auto 30px;   
  width: 650px;
  height: auto; 
  padding: 10px 70px 70px 71px;  
   font-style: italic;  
   font-size: 18px;
   font-family: "Didot 06 3i", "Times New Roman", Georgia, Serif;
} 

.main-div-detail {
  background: #FFFFFF none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  margin: 10px auto 30px;   
  width: 650px;
  height: auto; 
  padding: 50px 20px 50px 20px;  
   font-style: italic;  
   font-size: 18px;
   font-family: "Didot 06 3i", "Times New Roman", Georgia, Serif;
} 

.login-form .form-group {
  margin-bottom:10px;
}   
.login-form{ text-align:left;}
.forgot a {
  color: #777777;
  font-size: 16px;
   font-style: italic;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #4d4d4d none repeat scroll 0 0;
  border-color: #4d4d4d;
  color: #ffffff;
  font-size: 16px;: 12px;
  font-style: italic;
  width: 100%;
  height: 50px;
  padding: 0;
}
.forgot { 
  text-align: left; margin-bottom:30px;

}
.botto-text {
  color: #ffffff;
  font-size: 16px;: 12px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 12px;text-decoration: none;}
	
	.panel-table .panel-body{
  padding:0;
}
.table-responsive {height:300px;}

.panel-table .panel-body .table-bordered{
  border-style: none;
  margin:0;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type {
    text-align:center;
    width: 100px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:last-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:last-of-type {
  border-right: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr > th:first-of-type,
.panel-table .panel-body .table-bordered > tbody > tr > td:first-of-type {
  border-left: 0px;
}

.panel-table .panel-body .table-bordered > tbody > tr:first-of-type > td{
  border-bottom: 0px;
}

.panel-table .panel-body .table-bordered > thead > tr:first-of-type > th{
  border-top: 0px;
}

.panel-table .panel-footer .pagination{
  margin:0; 
}
 
/*
used to vertically center elements, may need modification if you're not using default sizes.
*/
.panel-table .panel-footer .col{
 line-height: 34px;
 height: 34px;
}

.panel-table .panel-heading .col h3{
 line-height: 30px;
 height: 30px;
}

.panel-table .panel-body .table-bordered > tbody > tr > td{
  line-height: 34px;
}
	
	
  </style>     
  <script type="text/javascript">   

  function repre(repre){
	  if(repre.value.length==7){
		  $("#nomRepre").val("Maria Perez Perez");
	  }
	  if(repre.value.length==8){
		  $("#nomRepre").val("Maria Perez Perez");
		  return false; 
	  } 
  }
  
  function numeros(nu) { // 1
	  tecla = (document.all) ? e.keyCode : e.which; // 2
	  if (tecla==8) return true; // 3
	  ppatron = /\d/; // Solo acepta números// 4
	  te = String.fromCharCode(tecla); // 5
	  alert();
	  return patron.test(te); // 6
	  }
  var cont = false;
  
  $(document).ready(function(){
	 
      $(".add-row").click(function(){
          var noRepre = $("#noRepre").val();
          var nombre = $("#nomRepre").val();
          var iccid = $("#iccid").val();
          var nombreUsuario = $("#nombreUsuario").val();
          
          if(noRepre == ""){alert("Ingresa tu número de representante."); return;}
          else if(noRepre.length <8){ alert("El número de Representante debe contener 8 dígitos"); return;}
          
          if(nombre == ""){alert("El nombre de la Representante no puede estar vacío"); return;}
          
          if(iccid == "" && cont == false){alert("Ingresa un ICCID"); cont = true; return;}
          else if(iccid.length < 20 && cont == false){ alert("El ICCID deber contener 20 dígitos"); cont = true; return;}
          
          if(nombreUsuario == "" && cont == false){alert("Ingresa un nombre de usuario chip");  cont = true; return;}
          else if(nombreUsuario.length < 3 && cont == false){ alert("El nombre de usuario debe contener más de 3 caracteres"); cont = true; return;}
          
          if(cont) return;
          
          var markup = "<tr><td>"+noRepre+"</td><td>" + nombre + "</td><td>" + iccid + "</td><td>" + nombreUsuario + "</td></tr>";
          $("table tbody").append(markup);
          $("#iccid").val("");
          $("#nombreUsuario").val("");
      });
      
  
     
  });    
  
  </script>
<body>  
	<header>
		<div class="container">
			<div class="row">
	  			<div class="col-xs-12 col-sm-8 col-sm-push-4 col-md-8 col-md-push-4 col-lg-8 col-lg-push-4">
					<div class="nav avon-menu">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="https://www.avon.mx/mx-home">Avon Mx</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-sm-pull-8 col-md-4 col-md-pull-8 col-lg-4 col-lg-pull-8">
					 <img src="images/empty.gif" alt="Logo Avon Beauty for purpose" class="img-responsive img-center"/>
				</div>
			</div>
		</div>
	</header>
	<div class="clearfix"></div>
	<div style="display: none" id="div-load" class="div-loading"></div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12">  
					<div class="container">
						<div class="row content-description"> 
							 <!-- <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm"></div> --> 
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
							<p></p>  
							</div>
						</div>
					</div>
				</div>	
			</div>  
		</div> 
		<div class="container" id="campos-busqueda"> 
		<div class="row"> 
				<div class="container">
					<div class="login-form"> 
					<div class="main-div">
					    <div class="panel header-banner"> 
					   		<p><h3><b>Ocurrió un error, intenta más tarde</b></h3></p>
					   </div> 
					</div> 
					</div>
			</div>
		</div>  
	</div> 
	 
	<br><br><br><br><br>

	<div>
		<footer>
			<div class="hr_color" ></div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="copyright"></div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="design">
					<font size="0" color="#ed008c">Â© 2017, Avon Cosmetics.</font>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>