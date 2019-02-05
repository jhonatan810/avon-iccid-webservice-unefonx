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
  width: 1100px;    
  height: 750px; 
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
	  if(repre.value.length==8){
		  $("#nomRepre").val("Maria Perez Perez");
		  return false; 
	  }

		  
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
					   <p><h3><b>Detalle de tus beneficios AVON</b></h3></p>
					   </div> 
					         <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title"><b><h4>Maria Perez Perez</h4></b></h3>
                  </div>
                    <div class="col col-xs-6 text-center">
                    <label for="inputPassword3" class="form-label">Total de comisiones: $52.50</label>
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
                        <th>Comisión</th> 
                    </tr>  
                  </thead>
                  <tbody id="myTable">
                
                          <tr>
                            <td class="hidden-xs">1278954687</td>
                            <td>$50</td>
                            <td>21 / Enero / 2019</td> 
                            <td>$2.50</td> 
                          </tr>
                          <tr>
                            <td class="hidden-xs">9630578420</td>
                            <td>$30</td>
                            <td>18 / Enero / 2019</td>
                            <td>$1.50</td>
                          </tr>
                          <tr>
                            <td class="hidden-xs">4897036528</td>
                            <td>$150</td>
                            <td>1 / Enero / 2019</td>
                            <td>$7.50</td>
                          </tr>              
                          <tr>
                            <td class="hidden-xs">7986458210</td>
                            <td>$200</td>
                            <td>18 / Enero / 2019</td>
                            <td>$10.00</td>
                          </tr>
                          <tr>
                            <td class="hidden-xs">7986301458</td>
                            <td>$500</td>
                            <td>16 / Enero / 2019</td>
                            <td>$25</td>
                          </tr>
                                                   <tr>
                            <td class="hidden-xs">7986301578</td>
                            <td>$10</td>
                            <td>15 / Enero / 2019</td>
                            <td>$0.50</td> 
                          </tr> 
                                                   <tr>
                            <td class="hidden-xs">79800215487</td>
                            <td>$10</td>
                            <td>21 / Enero / 2019</td>  
                            <td>$0.50</td>
                          </tr>
                                                    <tr>
                            <td class="hidden-xs">7986321548</td>
                            <td>$50</td>   
                            <td>21 / Enero / 2019</td>
                            <td>$2.50</td>
                          </tr>
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
	 
	<br><br><br><br>

	  
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