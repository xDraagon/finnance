<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="./Resources/CSS/investimentos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Renda Fixa',     200],
          ['FLLs',      500],
          ['Ações',  230],
        ]);

        var options = {
         
          pieHole: 0.6,
          width: 300,

          colors: ['#4D84B6', '#4EEAE0', '#94FCCA'],
          
         
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>

    <script src="https://kit.fontawesome.com/aff5796c5c.js" crossorigin="anonymous"></script>
    <!-- Imagem e texto -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <img src="brand2.png" width="30" height="30" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Alterna navegação">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-item nav-link" href="index.html">Home 
            <a class="nav-item nav-link" href="cadastro.html">Cadastro</a>
            <a class="nav-item nav-link active" href="rendimentos.html">Rendimentos</a>
          </div>
        </div>
      </nav>

               
                           <div id="centraliza">
                              <div class="card mt-5" href="#c1" type="button" data-toggle="collapse" aria-expanded="false" aria-controls="c1">
                                <div class="card-body" id="1">
                                  <h4 class="card-title">Investimentos</h4>
                                 
                                      
                                      <div class="row">
                                        
                                        <div class="grafico">
                                          <div id="donutchart"></div>
                                        </div>
                                        <div class="col" id="label">
                                          <label>Rendimento: 
                                           <div> 18% a.a </div>
                                          </label>
                                      </div>
                                      <div class="col sm-6">
                                          <label>Carteira Rendendo:
                                            <div>R$156.2</div>
                                          </label>
                                      </div>
                                    </div>
                               
                                    <span class="collapsed">Mais</span><span class="expanded"> Detalhes</span>
                                   
                                  <div class="collapse" id="c1">                                        
                                       <div class="row"> 
                                          <div class="col-6">Magaluuuuuu
                                            <div>135 R$</div>
                                          </div>
                                          <div class="col-6">Carteira Rendendo:
                                            <div>132 R$</div>
                                          </div>
                                         
                                          <div class="col-6">Aplicaçãooo
                                            <div>135 R$</div>
                                          </div>
                                          <div class="col-6">Carteira Rendendo:
                                            <div>132 R$</div>
                                          </div>

                                          <div class="col-6">Magalu
                                            <div>135 R$</div>
                                          </div>
                                          <div class="col-6">Carteira Rendendo:
                                            <div>132 R$</div>
                                          </div>
                                        </div>   
                                                                         
                                        <div id="centraliza2">
                                          <div class="row">
                                            <div class="c4">
                                              <a href="./WEB-INF/AddInvestimentoJSP.jsp"><input type="image" src="download.png" style="border: double;" height="55" width="70" id="add"/></a>
                                            </div> 
                                          </div>
                                        <div class="row">
                                      <a href="historico.html"><button id="historico">Histórico</button></a>
                                       </div> 
                                    </div>
                                     
                                  </div>
                                </div>
                              </div>
                   </div>
     
     

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
          </body>
</html>