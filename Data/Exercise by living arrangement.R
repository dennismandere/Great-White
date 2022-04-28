#'data as a matrix
#'
#'The data is a matrix of numerical values showing the relationship between
#'exercise status and living arrangement.
#'There are four rows which represent the living arrangement and 3 columns which
#'represent the exercise status
#'
observed_table<-matrix(c(34,30,28,74,62,42,110,25,15,39,8,7),
                           nrow = 4,ncol = 3,byrow = T)
row.names(observed_table) <-c('Dormitory','On_campus','Off_campus','At home')
colnames(observed_table) <-c('No_regular','Sporadic','Regular')
#'
#'
#'
##data as a data frame
#'Convert the matrix into a data frame
#'
dar = as.data.frame(observed_table)
#dar
##


