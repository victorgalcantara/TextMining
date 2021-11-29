# TextMining
Text mining with packages "tidytext", "quanteda", "tm", "stringr" and "wordcloud" in R.

<a href="https://www.tidytextmining.com/index.html"><img src="https://github.com/victorgalcantara/TextMining/blob/main/assets/logo-tidytext.png?raw=true"/></a>   
<a href="https://quanteda.io/"><img src="https://github.com/victorgalcantara/TextMining/blob/main/assets/logo-quanteda.svg"/></a>

Este repositório guarda materiais de estudo sobre mineração e análise de textos com R. Os livros utilizados encontram-se nas referências ao final deste documento.

A mineração de texto, do inglês _text mining_, é um método de análise de textos que pode ser aplicado com softwares como o R. O primeiro passo para aplicar métricas de análise textual é guardar o texto na memória, em formato .txt, em um objeto. Assim, teremos um vetor unidimensional com todos os caracteres aglomerados em palavras no texto em um formato em que as funções do pacote "tm" (_text mining_) conseguem operar.

O segundo passo é limpar o texto dos caracteres que não nos interessam, como as pontuações e sinalizações, as marcações do PDF, os espaços vazios em excesso e até algumas classes gramaticais, como as preposições, conjunções e adjuntos adverbiais.

Após a limpeza do texto, podemos iniciar nossas análises.

# Nuvem de palavras - _Wordcloud_

Uma das técnicas mais comuns em mineração de texto é a nuvem de palavras. Se trata da representação de palavras de acordo com sua frequência no texto. O tamanho das palavras na nuvem varia de acordo com sua frequência, o que possibilita uma visualização geral sobre os termos tratados no texto. Observe o exemplo abaixo, uma nuvem de palavras de todos os artigos publicados na última edição da revista Estudos em Avaliação Educacional, caso apresentado no script "tm-rev-eae".

<a href="https://github.com/victorgalcantara/TextMining/blob/main/assets/wordcloud-top100w.html"><img src="https://github.com/victorgalcantara/TextMining/blob/main/assets/wordcloud-top100w.png"/></a>

# Rede de relações - _Network_

Uma rede pode ser estruturada por três informações principais:

-from: o nó de onde parte a relação
-to: o nó para onde vai a relação
-weight: o peso da associação

<img src="https://github.com/victorgalcantara/TextMining/blob/main/assets/network.png"/>

# Referências

SILGE, Julia;ROBINSON, David. 2016. Tidytext package for R. Disponível em: https://www.tidytextmining.com/index.html

Benoit, Kenneth, Kohei Watanabe, Haiyan Wang, Paul Nulty, Adam Obeng, Stefan Müller, and Akitaka Matsuo. (2018) “quanteda: An R package for the quantitative analysis of textual data”. Journal of Open Source Software. 3(30), 774. https://doi.org/10.21105/joss.00774. Disponível em: https://quanteda.io/.
