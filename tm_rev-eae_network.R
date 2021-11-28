# Title Text mining - Bagwords of REAE
# Author: Victor Gabriel Alcantara
# Date: 27.11.21

# 0. Packages and setup -----------------------------------------------------

library(tidyverse)
library(tidytext)
library(igraph)
library(ggraph)
library(pdftools)
library(tm)
library(stringr)
library(wordcloud)
library(wordcloud2)
require(RColorBrewer)

wd <- "C:/Users/VictorGabriel/Documents/00_dados/REV_EST_AVALIACAO/"
setwd(wd)

# 1. Import databases --------------------------------------------------------

text <- data[[1]]

text <- Corpus(VectorSource(text))

# 2. text management -------------------------------------------------------


# Convert the text to lower case
text <- tm_map(text, content_transformer(tolower))
# Remove numbers
#text <- tm_map(text, removeNumbers)

# Remove portuguese common stopwords
text <- tm_map(text, removeWords, stopwords("portuguese"))

# Remove your own stop word
# specify your stopwords as a character vector
prep <- c("a","ante","até","após","com","contra","de",
          "desde","em","entre","para","per","perante",
          "por","sem","sob","sobre","trás","and")

conj <- c("além","portanto","assim","e","ou","porém","entretanto")

pron <- c("este","esse","aquele","aquela","neste","deste","the")

verbos <- c("ser","sendo","fazer")

anos <- c("2020","2021","2016","1990")

adj.adv <- c("apenas")

subs <- c("forma","meio","uf050","paulo")

text <- tm_map(text, removeWords, c(prep,conj,pron,verbos,adj.adv,subs,anos) ) 

# Remove punctuations
text <- tm_map(text, removePunctuation)

# Eliminate extra white spaces
text <- tm_map(text, stripWhitespace)

# Text stemming
# text <- tm_map(text, stemDocument)

dtm <- TermDocumentMatrix(text)
findFreqTerms(dtm, lowfreq = 4)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)

txt <- text[[1]]$content

texto <- data.frame(text=txt,art=rep(NA,length(txt)))

txt <- texto %>% tidytext::unnest_tokens(trigram, text, token = "ngrams", n = 3)

txt %>% count(trigram, sort = TRUE)

trigrams_separated <- txt %>%
  separate(trigram, c("word1", "word2","word3"), sep = " ")

t <- trigrams_separated %>% filter(!word1 %in% stop_words$word,
                              !word2 %in% stop_words$word,
                              !word3 %in% stop_words$word) %>%
  count(word1, word2, word3, sort = TRUE)

t <- t %>%
  filter(n > 3) %>%
  graph_from_data_frame()

ggraph(t, layout = "fr") +
  geom_edge_link() +
  geom_node_point() +
  geom_node_text(aes(label = name), vjust = 1, hjust = 1)+
  labs(title = "Words from an article of Rev EAE")
