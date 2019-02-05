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
<script src="./js/date.format.js"></script>

<title>AVON - Chip consulta </title>
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
					<div class="main-div-consulta"> 
					    <div class="panel header-banner"> 
					   <p><h3><b>Detalle de tus beneficios AVON</b></h3></p>
					   </div> 
					  
					  <div style="float: right;">
					  	<label for="cboPeriod" class="form-label">Periodo: </label>
							   <select name="cboDate" id="cboDate"> 
								     <#list  datesPeriod as dates>
									  		<option value="${dates.id}">${dates.strDate}</option>
									  </#list>
								</select>
					  </div>
					  <br><br>
					  
					  <div class="panel panel-default panel-table">
			              <div class="panel-heading">
			                <div class="row">
			                  <div class="col col-xs-6">
			                    <h3 class="panel-title"><b><h4>${nameRepre}</h4></b></h3>
			                  </div>
			                    <div class="col col-xs-6 text-center">
			                    <strong>Total de comisiones: $</strong><label for="inputPassword3" class="form-label" name="lblComision" id="lblComision">${totalCommissions}</label>
			                  </div>
			                </div>
			              </div> 
			              <div class="panel-body table-responsive">
			                <table class="table table-striped table-bordered table-list">  
			                  <thead>
			                    <tr> 
			                        <th class="hidden-xs">ICCID</th>
			                        <th>Recarga</th>
			                        <th>Fecha Recarga</th>     
			                        <th>Comisi&oacute;n</th> 
			                    </tr>  
			                  </thead>
			                  <tbody id="myTable">
							                <#list  reports as report>
							                	<tr>
							                		<td style="display: none;">0</td>
													<td>${report.iccid}</td>
													<td>$${report.monto}</td>
													<td>${report.fechaRecarga?date}</td>
													<td>$${report.comision}</td>
												</tr>
							                </#list>
						                  </tbody>
			                </table>
			            
		              </div>
		            </div>
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
					<font size="0" color="#ed008c"> 2019, Avon Cosmetics.</font>
				</div>
			</div>
		</footer>
	</div>
<div style="display: none" id="div-load" class="div-loading"></div>
</body>
</html>