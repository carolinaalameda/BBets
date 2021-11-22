Carolina<-function(numClass = 35,odds = 2,countoDo = 637){
  
  days=1:365
  repeatn=numClass
  varstor=numeric()
  Carolina = 0
  for (i in 1:countoDo) {
    sam=sample(days,size=numClass,replace = T)
    y=duplicated(sam)
    if (sum(y)>0) Carolina=Carolina+1
    else Carolina = Carolina - odds
  }
  return(Carolina)
}
