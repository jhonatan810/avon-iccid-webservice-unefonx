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
<link rel="stylesheet" href="./css/wizard.css">
<link rel="stylesheet" href="./css/footer.css">   
<link rel="stylesheet" href="./css/index.css">
<script src="./js/validation.js"></script>

<title>Avon - SIM </title>
    
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
	
	.panel-table .panel-body{
  padding:0;
}
.table-responsive {height:400px;}

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
  
  $(document).ready(function(){
      $(".add-row").click(function(){
          var noRepre = $("#noRepre").val();
          var nombre = $("#nomRepre").val();
          var iccid = $("#iccid").val();
          
          if(iccid == ""){
        	  
          }
          
          
          var markup = "<tr><td>"+noRepre+"</td><td>" + nombre + "</td><td>" + iccid + "</td></tr>";
          $("table tbody").append(markup);
          $("#iccid").val("");
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
					   		<p><h3><b>Registra tu c&oacute;digo ICCID y obt&eacute;n m&aacute;s beneficios</b></h3></p>
					   </div> 
					   <form>
					    	<div class="form-group row">
			    				<label for="inputEmail3" class="col-sm-6 col-form-label">No Representante<span class="required-star">*</span></label>
			   					<div class="col-sm-4">
			      					<input type="number" pattern="/^-?\d+\.?\d*$/" onKeyPress="return repre(this);"  class="form-control" id="noRepre" placeholder="No Representante">
			   				    </div> 
			    				<div class="col-sm-2">  
			     					  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <a  class="info" data-toggle="modal" data-target="#exampleModalLong2" ><img style="width: 25px; height: 25px;" src="images/info.png" alt="Ver estado de cuenta"></a>
			   				    </div>
				  			    </div>        
							    <div class="form-group row">  
							    	<label for="inputPassword3" class="col-sm-6 col-form-label">Nombre Representate</label>
							   		<div class="col-sm-4"> 
							      		<input type="text" class="form-control" id="nomRepre" placeholder="Nombre Representate" disabled>
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
			   				  <br> <br> <br> <br> 
					         
					   </form>
					    <button  class="btn btn-pink border border-white add-row">Agregar ICCID</button>
					</div> 
					
					<div class="main-div">
						     <div class="panel panel-default panel-table">
					              <div class="panel-heading">
					              </div> 
					              <div class="panel-body table-responsive">
					                <table class="table table-striped table-bordered table-list">  
					                  <thead>
					                    <tr> 
					                        <th class="hidden-xs">No Representante</th>
					                        <th>Nombre Representante</th>
					                        <th>ICCID</th>     
					                    </tr>  
					                  </thead>
					                  <tbody id="myTable">
					                
					                          <!-- <tr>
					                            <td class="hidden-xs">12345678</td>
					                            <td>Maria Perez Perez</td>
					                            <td>15789578463987512065</td> 
					                          </tr>
					                          <tr>
					                            <td class="hidden-xs">12345678</td>
					                            <td>Maria Perez Perez</td>
					                            <td>98703659701487963058</td> 
					                          </tr>
					                          <tr>
					                            <td class="hidden-xs">12345678</td>
					                            <td>Maria Perez Perez</td>
					                            <td>03697852071987638942</td> 
					                          </tr>              
					                          <tr>
					                            <td class="hidden-xs">12345678</td>
					                            <td>Maria Perez Perez</td>
					                            <td>97863097845201187963</td> 
					                          </tr>
					                          <tr>
					                            <td class="hidden-xs">12345678</td>
					                            <td>Maria Perez Perez</td>
					                            <td>03975844978002416977</td> 
					                          </tr> -->
					                        </tbody>
					                </table>
					            
					              </div>
					              <div class="panel-footer">
					                <div class="row">  
					                    
					                  <div class="col col-xs-4">
					                  </div>
					                  <div class="col col-xs-8">
					                    <ul class="pagination hidden-xs pull-right" id="myPager">
					                    </ul>
					                    <ul class="pagination visible-xs pull-right">
					                        <li><a href="#">«</a></li>
					                        <li><a href="#">»</a></li>
					                    </ul>
					                  </div>
					                </div>
					              </div>
					            </div>   
					</div> 
					</div>
			</div>
		</div>  
	</div> 
	 
	<br><br><br><br><br>

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
					<font size="0" color="#ed008c">Â© 2017, Avon Cosmetics.</font>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>