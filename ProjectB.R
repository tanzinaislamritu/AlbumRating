#Tanzina Islam
#SFU ID - 301353167
#MIDTERM SPRING 2020
#QUESTION 3 Project B, Album Ratings

library(rvest)

pitchfork <- function(url) {
  #read web page
  urlRead<-read_html(url)
  #read review
  review <- urlRead %>% html_nodes(".contents.dropcap p") %>% html_text()
  #read rating
  score <- urlRead %>% html_nodes(".score") %>% html_text()
  #list
  critic<-list("text"=review,"rating"=score)
  
  return (critic)
}
 
review = pitchfork('https://pitchfork.com/reviews/albums/destroyer-have-we-met/')

review$text
review$rating



  