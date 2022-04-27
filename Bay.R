bay<-function(k)  {
  k = barplot(observed_table,ylab="Residence", xlab="Exercise status",
              main="Exercise by living arrangement",
              col = c("turquoise4","turquoise3","turquoise2", "turquoise"),
              beside = T, width = .3)
}
