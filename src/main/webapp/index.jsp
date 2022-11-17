<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="investimentos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   	<script type="text/javascript" src="script.js"></script>
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

        var chart = new google.visualization.PieChart(document.getElementById('grafico'));
        chart.draw(data, options);
        
        const btn = document
        .querySelector('.read-more-btn');

	    const text = document
	        .querySelector('.card__read-more');
	
	    const cardHolder = document
	        .querySelector('.card-holder');
	
	    cardHolder
	        .addEventListener('click', e => {
	
	            const current = e.target;
	
	            const isReadMoreBtn = current.className.includes('read-more-btn');
	
	            if (!isReadMoreBtn)
	                return;
	
	            const currentText = e.target.parentNode.querySelector('.card__read-more');
	
	            currentText.classList.toggle('card__read-more--open');
	
	            current.textContent = current.textContent.includes('Mais Detalhes') ? 'Menos Detalhes' : 'Mais Detalhes';

        });     
      }
    </script>
  </head>
  <body>
                           <div id="centraliza">
                           <div class="card-holder">

					    <div class="card" style="border-radius: 50px; border: none;">
					
					      <div class="card-contents">
					        <h1 class="card__name">Investimentos</h1>
					
					
					        <p>
					
					             <div class="row">                
					                      <div class="grafico">
					                           <div id="grafico"></div>
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
					
					          
					
					          <span class="card__read-more">
					            <div class="row"> 
                                          <div class="col-6">Magaluuuuuu
                                            <div class="vlr">135 R$</div>
                                          </div>
                                          <div class="col-6">Carteira Rendendo:
                                            <div class="vlr">132 R$</div>
                                          </div>
                                         
                                          <div class="col-6">Aplicaçãooo
                                            <div class="vlr">135 R$</div>
                                          </div>
                                          <div class="col-6">Carteira Rendendo:
                                            <div class="vlr">132 R$</div>
                                          </div>

                                          <div class="col-6">Magalu
                                            <div class="vlr">135 R$</div>
                                          </div>
                                          <div class="col-6">Carteira Rendendo:
                                            <div class="vlr">132 R$</div>
                                          </div>
                                        </div>   
                                                                         
                                        <div id="centraliza2">
                                          <div class="row">
                                            <div class="c4">
                                              <a href="AddInvestimentoJSP.jsp"><input type="image" src="download.png" style="border: double;" height="55" width="70" id="add"/></a>
                                            </div> 
                                          </div>
                                        <div class="row">
                                      <a href="historico.html"><button id="historico">Histórico</button></a>
                                       </div> 
                                    </div>
          </span>
        </p>

        <p class="read-more-btn" style="border-radius: 50px;">Mais Detalhes</p>

      </div>


    </div>
  				</div>
                   </div>
     
     

        
          </body>
</html>