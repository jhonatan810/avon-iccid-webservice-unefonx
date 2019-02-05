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
<script type="text/javascript" src="js/transaction.js"></script>
<script src="./js/validations.js"></script>

<title>AVON - Chip registro </title>
<style type="text/css">

	
</style> 
    
<script type="text/javascript">   
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
					   		<p><h3><b>Registra tu c&oacute;digo ICCID y obt&eacute;n m&aacute;s beneficios</b></h3></p>
					   </div> 
					   <form>
					    	<div class="form-group row">
			    				<label for="inputEmail3" class="col-sm-6 col-form-label">No Representante<span class="required-star">*</span></label>
			   					<div class="col-sm-4">
			      					<input type="text" maxlength="8" onkeypress='return validaNumericos(event)' value="${noRepre}"  class="form-control" id="noRepre" placeholder="No Representante" disabled>
			   				    </div> 
			    				<div class="col-sm-2">  
			     					  <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <a  class="info" data-toggle="modal" data-target="#exampleModalLong2" ><img style="width: 25px; height: 25px;" src="images/info.png" alt="Ver estado de cuenta"></a> -->
			   				    </div>
				  			    </div>        
							    <div class="form-group row">  
							    	<label for="inputPassword3" class="col-sm-6 col-form-label">Nombre Representate</label>
							   		<div class="col-sm-4"> 
							      		<input type="text" class="form-control" id="nomRepre" value="${nameRepre}" placeholder="Nombre Representate" disabled>
							        </div>
							  	</div>
							    <div class="form-group row">    
								    <label for="inputPassword3" class="col-sm-6 col-form-label">ICCID<span class="required-star">*</span></label>
								    <div class="col-sm-4">  
								      	<input type="text" class="form-control" id="iccid" placeholder="ICCID"  maxlength="20">
								    </div> 
								    <div class="col-sm-2">  
								    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <a class="info" data-toggle="modal" data-target="#exampleModalLong"  ><img style="width: 25px; height: 25px;" src="images/info.png" alt="Ver estado de cuenta"></a>
								    </div>
								    <div class="col-sm-6"> 
								    </div>
							   </div> 
							    <div class="form-group row">    
								    <label for="inputPassword3" class="col-sm-6 col-form-label">Nombre Usuario Chip<span class="required-star">*</span></label>
								    <div class="col-sm-4">  
								      	<input type="text" class="form-control" id="nombreUsuario" onkeypress="return soloLetras(event);"  placeholder="Nombre Usuario Chip"  maxlength="30" >
								    </div> 
								    <div class="col-sm-2">  
								    <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <a class="info" data-toggle="modal" data-target="#exampleModalLong"  ><img style="width: 25px; height: 25px;" src="images/info.png" alt="Ver estado de cuenta"></a> -->
								    </div> 
								    <div class="col-sm-6"> 
								    </div>
							   </div> 
			   				  <br> <br> 
					         
					   </form>
					    <button  id="btnAgregar" class="btn btn-pink border border-white add-row">Agregar ICCID</button>
					</div> 
					<div class="main-div-detail">
						     <div class="panel panel-default panel-table">
					             <!--  <div class="panel-heading">
					              </div>  -->
					              <div id = "div-tab" class="panel-body table-responsive">
					                
					                <table id="tabRe" class="table table-striped table-bordered table-list">  
					                  <thead>
					                    <tr> 
					                        <th style="display: none;">id</th>
					                        <th>No Representante</th>
					                        <th>Nombre Representante</th>
					                        <th>ICCID</th>
					                        <th>Nombre Usuario Chip</th>     
					                    </tr>  
					                  </thead>
						                  <tbody id="myTable">
							                <#list  listRecords as record>
							                	<tr>
							                		<td style="display: none;">0</td>
													<td>${record.repre}</td>
													<td>${record.nombreRepre}</td>
													<td>${record.iccid}</td>
													<td>${record.nombreUsuario}</td>
												</tr>
							                </#list>
						                  </tbody>
					                </table>
					            
					              </div>
					            </div>  
					   <br>
					   <button id="btnConfirmar" type="submit" class="btn btn-pink border border-white confirm-record">Confirmar Registro</button> 
					</div> 
					</div>
			</div>
		</div>  
	</div> 
	<br><br><br><br>
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">  
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><strong>C&oacute;digo ICCID</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>  
      <div class="modal-body">
      <strong>-El c&oacute;digo ICCID consta de 20 d&iacute;gitos.</strong>
      <br>
      <strong>-El c&oacute;digo ICCID es el que se encuentra debajo del c&oacute;digo de barras.</strong>
       
       <br>
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
					<font size="0" color="#ed008c"> 2019, Avon Cosmetics.</font>
				</div>
			</div>
		</footer>
	</div>
<div style="display: none" id="div-load" class="div-loading"></div>
</body>
</html>