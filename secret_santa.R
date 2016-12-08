secret_santa <- function(names){
  n = length(names)
  match = NULL
  for(i in 1:n){
    match=c(match,sample(names[!(names %in% c(names[i],match))],1))
  }
  cbind(names,match)
}

names = c('A','B','C','D','E','F')

secret_santa = secret_santa(names)
secret_santa
