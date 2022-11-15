<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
	<meta http-equiv='X-UA-Compatible' content='IE=edge'>
	<title>Adicionar Investimento</title>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
	<link rel='stylesheet' type='text/css' media='screen' href='./Resources/CSS/add.css'>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src='main.js'></script>
</head>
<body>
	<div class="box">
        <form class="mt-5" method="POST" action="AddInvestimentoJSP">
            <div class="row">
                <div id="centraliza">
                    <div class="col md-12">
                            <label id="nome">Nome do Investimento</label>
                            <input id ="nome" type="text" class="form-control" id="exampleInputPassword1" placeholder="Nome Investimento">
                    </div>
                </div>
            </div>
                        
            <div class="row mt-4">
                <div id="centraliza">
                    <div class="col md-12">
                           <label id="cpf">Tipo Investimento:</label>
                            <input id ="nome" type="text" class="form-control" id="exampleInputPassword1" placeholder="Tipo">
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div id="data">
                    <div class="col md-12">                           
                            <label id="endereço">Data:</label>
                            <input id ="nome" type="date" class="form-control" id="exampleInputPassword1" placeholder="Data" style="width:220px">                        
                    </div>
                </div>
            </div>

			<div class="row mt-4">
                <div id="centraliza">
                    <div class="col md-12">                           
                            <label id="endereço">Valor:</label>
                            <input id ="nome" type="text" class="form-control" id="exampleInputPassword1" placeholder="Valor">                        
                    </div>
                </div>
            </div>

			<div class="row mt-4">
				<div class="btn">
				<a href="historico.html"><button id="btn">Adicionar</button></a>
				</div>
				 </div> 
            </div>
		</form>
	</div>

			<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>