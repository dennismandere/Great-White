#' @title Expected cell frequencies
#'
#' @param x is a data set.which can be a vector,matrix,data frame, table
#'
#' @return y a numeric value
#' @export
#'
#' @examples jael()
jael<-function(x) {
  x = observed_table<-matrix(c(34,30,28,74,62,42,110,25,15,39,8,7),
                             nrow = 4,ncol = 3,byrow = T)
  row.names(observed_table) <-c('Dormitory','On_campus','Off_campus','At home')
  colnames(observed_table) <-c('No_regular','Sporadic','Regular')
  chis <- chisq.test(observed_table)
  y = round(chis$expected,2)
  return(y)
}

#'@title Mos function
#'
#'@param h is a data set.which can be a vector,matrix,data frame, table.
#
#'@return a mosaic plot object of the contigency table
#'@export
#'
#'@examples mos()
mos<-function(h) {
  h = mosaicplot(observed_table,main = "Exercise by living arrangemet",
                 ylab = "Exercise status",
                 xlab = "residence",col = c(2,3,4))
}
##
#'bay function
#'@title bay function
#'@param k is a data set.can be a vector,matrix,data frame, table.
#'
#'@return a side by side bar plot object that shows the relationship between the
#'various variables
#'
#'@export
#'
#'@examples bay()
bay<-function(k)  {
  k = barplot(observed_table,ylab="Residence", xlab="Exercise status",
        main="Exercise by living arrangement",
        col = c("turquoise4","turquoise3","turquoise2", "turquoise"),
        beside = T, width = .3)
}

