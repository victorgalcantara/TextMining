# TextMining
Text mining with packages "tm", "stringr" and "wordcloud" in R.

A mineração de texto, do inglês _text mining_, é um método de análise de textos que pode ser aplicado com softwares como o R. O primeiro passo para aplicar métricas de análise textual é guardar o texto na memória, em formato .txt, em um objeto. Assim, teremos um vetor unidimensional com todos os caracteres aglomerados em palavras no texto em um formato em que as funções do pacote "tm" (_text mining_) conseguem operar.

O segundo passo é limpar o texto dos caracteres que não nos interessam, como as pontuações e sinalizações, as marcações do PDF, os espaços vazios em excesso e até algumas classes gramaticais, como as preposições, conjunções e adjuntos adverbiais.

Após a limpeza do texto, podemos iniciar nossas análises.

# Nuvem de palavras

Uma das técnicas mais comuns em mineração de texto é a nuvem de palavras. Se trata da representação de palavras de acordo com sua frequência no texto. O tamanho das palavras na nuvem varia de acordo com sua frequência, o que possibilita uma visualização geral sobre os termos tratados no texto. Observe o exemplo abaixo, uma nuvem de palavras de todos os artigos publicados na última edição da revista Estudos em Avaliação Educacional, caso apresentado no script "tm-rev-eae".

<img src="https://github.com/victorgalcantara/TextMining/blob/main/assets/wordcloud-top100w.png"/>

<div id="htmlwidget_container">
  <div id="htmlwidget-937857037df54cc96fe1" style="width:960px;height:500px;" class="wordcloud2 html-widget"></div>
</div>
<script type="application/json" data-for="htmlwidget-937857037df54cc96fe1">{"x":{"word":["avaliação","educação","ensino","paulo","brasil","2021","alunos","uf050","–","educ","aval","estud","professores","trabalho","ser","2020","the","resultados","formação","desempenho","qualidade","cursos","escolar","políticas","infantil","superior","acesso","análise","aprendizagem","estudantes","dados","educacional","2015","exame","2017","nacional","processo","estudos","2016","pesquisa","meio","relação","escolas","disponível","escola","forma","contexto","estudo","ano","curso","maior","educacionais","assim","2014","avaliações","universidade","práticas","2018","básica","ainda","crianças","sistema","rio","•","“","pode","partir","sendo","brasília","processos","and","federal","questões","2009","atividades","docente","política","instituições","base","gestão","autores","janeiro","anos","2010","fonte","médio","social","pandemia","docentes","2013","desenvolvimento","enem","instrumentos","revista","accountability","elaboração","escala","saeb","apenas","sentido"],"freq":[1483,1366,884,740,667,624,536,524,519,478,476,476,457,412,377,358,353,348,345,337,334,329,328,328,312,306,303,281,279,274,270,269,262,259,256,253,252,234,231,226,225,224,219,216,215,215,212,212,201,201,195,191,188,187,187,184,183,181,181,180,180,180,175,169,167,164,161,161,160,160,159,157,156,155,155,154,154,153,149,149,148,148,147,146,146,145,145,144,143,140,140,140,139,139,136,136,136,136,135,134],"fontFamily":"Segoe UI","fontWeight":"bold","color":"random-dark","minSize":0,"weightFactor":0.0971004720161834,"backgroundColor":"white","gridSize":0,"minRotation":-0.785398163397448,"maxRotation":0.785398163397448,"shuffle":true,"rotateRatio":0.4,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
<script type="application/htmlwidget-sizing" data-for="htmlwidget-937857037df54cc96fe1">{"viewer":{"width":450,"height":350,"padding":0,"fill":true},"browser":{"width":960,"height":500,"padding":0,"fill":true}}</script>
