<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico" />
<meta http-equiv = "Content-Type" content = "text/html/json; charset = UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.min.css"> 
<link rel="stylesheet" href="./css/wizard.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/index.css">
<script src="./js/validation.js"></script>
<title>Avon- Puntos de Pago</title>
  
  
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
  line-height: 60px; 
}  
.main-div {
  background: #FFFFFF none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  margin: 10px auto 30px;   
  width: 650px;
  height: 400px; 
  padding: 50px 70px 70px 71px;  
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
	
	
	
  </style>     
  <script type="text/javascript">
		 
  function repre(repre){
	  if(repre.value.length==8){
		  $("#nomRepre").val("Maria Perez Perez");
		  return false; 
	  }
  }
  
  
  function detalle(){
	  window.location.href = "consulta-detalle.jsp";
  }
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
					   <p><h3><b>Consulta los beneficios de tus c&oacute;digos ICCID</b></h3></p>
					   </div> 
					   <form>
					<div class="form-group row">
			    <label for="inputEmail3" class="col-sm-6 col-form-label">No Representante<span class="required-star">*</span></label>
			    <div class="col-sm-4">
			      <input type="number" pattern="/^-?\d+\.?\d*$/" onKeyPress="return repre(this)"  class="form-control" id="noRepre" placeholder="No Representante">
			    </div> 
			    <div class="col-sm-2">  
			       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <a  class="info" data-toggle="modal" data-target="#exampleModalLong2" ><img style="width: 25px; height: 25px;" src="images/info.png" alt="Ver estado de cuenta"></a>
			    </div>
			  </div>         
			  <br> <br> 
					        <button type="button" onclick="detalle();" class="btn btn-pink border border-white">Consultar</button>
					</form>
					   
					   <!--  <form id="Login">
					    <label>No Representante</label>
					        <div class="form-group">
					            <input type="NoRepre" class="form-control" id="noRepre" placeholder="No Representante">
					        </div>
					         <div class="form-group">
					            <input type="nomRepre" class="form-control" id="nomRepre" placeholder="Nombre Representante">
					        </div>
					        <div class="form-group">
					            <input type="Imei" class="form-control" id="Imei" placeholder="IMEI">
					        </div>
							<br> 
							<br>        
					        <button type="submit" class="btn btn-pink border border-white">Registrar</button>
					    </form> -->
					    </div>
					</div>
			</div>
		</div>
	</div> 
	 
	<br><br><br><br><br><br><br><br><br>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">  
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">IMEI</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>  
      <div class="modal-body">
         <img style="width: 570px; height: 300px;" src="images/sim.jpg" alt="Ver estado de cuenta">
      </div>
    </div>
  </div>
</div>
	  
<div class="modal fade" id="exampleModalLong2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle2" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">  
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">No Representante</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <img style="width: 570px; height: 700px;" src="images/estado.png" alt="Ver estado de cuenta">
      </div>
    </div>
  </div>
</div>
	<div>
		<footer>
			<div class="hr_color" ></div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="copyright"></div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="design">
					<font size="0" color="#ed008c">© 2017, Avon Cosmetics.</font>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>