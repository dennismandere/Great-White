jael<-function(x) {
  x = observed_table<-matrix(c(34,30,28,74,62,42,110,25,15,39,8,7),
                             nrow = 4,ncol = 3,byrow = T)
  row.names(observed_table) <-c('Dormitory','On_campus','Off_campus','At home')
  colnames(observed_table) <-c('No_regular','Sporadic','Regular')
  chis <- chisq.test(observed_table)
  y = round(chis$expected,2)
  return(y)
}

