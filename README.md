# TextMining
Text mining with packages "tm", "stringr" and "wordcloud" in R.

A mineração de texto, do inglês _text mining_, é um método de análise de textos que pode ser aplicado com softwares como o R. O primeiro passo para aplicar métricas de análise textual é guardar o texto na memória, em formato .txt, em um objeto. Assim, teremos um vetor unidimensional com todos os caracteres aglomerados em palavras no texto em um formato em que as funções do pacote "tm" (_text mining_) conseguem operar.

O segundo passo é limpar o texto dos caracteres que não nos interessam, como as pontuações e sinalizações, as marcações do PDF, os espaços vazios em excesso e até algumas classes gramaticais, como as preposições, conjunções e adjuntos adverbiais.

Após a limpeza do texto, podemos iniciar nossas análises.

# Nuvem de palavras

Uma das técnicas mais comuns em mineração de texto é a nuvem de palavras. Se trata da representação de palavras de acordo com sua frequência no texto. O tamanho das palavras na nuvem varia de acordo com sua frequência, o que possibilita uma visualização geral sobre os termos tratados no texto. Observe o exemplo abaixo, uma nuvem de palavras de todos os artigos publicados na última edição da revista Estudos em Avaliação Educacional, caso apresentado no script "tm-rev-eae".

<img src="https://github.com/victorgalcantara/TextMining/blob/main/assets/wordcloud-top100w.png"/>
