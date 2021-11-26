# Title Text mining - Bagwords of REAE
# Author: Victor Gabriel Alcantara
# Date: 26.11.21

# 0. Packages and setup -----------------------------------------------------

library(tidyverse)
library(pdftools)
library(tm)
library(stringr)
library(wordcloud) 
require(RColorBrewer)

wd <- "C:/Users/VictorGabriel/Documents/00_dados/REV_EST_AVALIACAO/"
setwd(wd)

# 1. Import databases --------------------------------------------------------

for(i in 1){
  pdf   <- pdf_text(paste0(wd,text_edicoes[i],"/",1,".pdf") ) # caminho do arquivo
  txt_output <- pdf %>%
    stringr::str_replace_all(fixed("\n"), " ") %>%
    stringr::str_replace_all(fixed("\r"), " ") %>%
    stringr::str_replace_all(fixed("\t"), " ") %>%
    stringr::str_replace_all(fixed("\""), " ") %>%
    stringr::str_replace_all("- ", "")
}

write(txt_output,"data.txt")

data <- readLines("data.txt")
data <- Corpus(VectorSource(data))

# 2. Data management -------------------------------------------------------

# Convert the text to lower case
data <- tm_map(data, content_transformer(tolower))
# Remove numbers
#data <- tm_map(data, removeNumbers)

# Remove portuguese common stopwords
data <- tm_map(data, removeWords, stopwords("portuguese"))

# Remove your own stop word
# specify your stopwords as a character vector
prep <- c("a","ante","até","após","com","contra","de",
         "desde","em","entre","para","per","perante",
         "por","sem","sob","sobre","trás")

conj <- c("além","portanto")

art <- c("neste","deste")

data <- tm_map(data, removeWords, c(prep,conj,art) ) 

# Remove punctuations
data <- tm_map(data, removePunctuation)

# Eliminate extra white spaces
data <- tm_map(data, stripWhitespace)

# Text stemming
# data <- tm_map(data, stemDocument)

dtm <- TermDocumentMatrix(data)
findFreqTerms(dtm, lowfreq = 4)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)

findAssocs(dtm, terms = d[1:3,1], corlimit = 0.5)

# 3. WordCloud -------------------------------------------------------------

wordcloud(words=d$word,freq=d$freq,
           min.freq=5,max.words=50,
           random.order=F,colors=brewer.pal(8, "Dark2"))

wordcloud2(d[1:50,], color = "random-dark",size = 0.8, shape = "circle", backgroundColor = "white") 
