
#To create an S3 oblect you use the list function because its easy to manipulate.
b<-list(height=172,weight=59,gender="female")
b
class(b)<-"bmi"
class(b)
attributes(b)#check the class

#you can access the member variable by the $ sign for example
b$weight

#You can create your own generic function
print.bmi<-function(height,weight,gender){cat(obj$height,"is height of person\n")
cat("weightin kg",obj$weight,"\n")
cat("gender",obj$gender,"\n")}

#Applying my generic method
height.bmi<-function(object){cat(object$height,"is height of person\n")}
height.bmi(b)


#its therefore possible to use a generic method like print() 
print.bmi


#creating S4.I will use the same data set like in S3 above.The first step is
#to define a class by using the setClass()function.
setClass("bmi",slots=list(height="numeric",weight="numeric",gender="character"))
g<-new("bmi",height=172,weight=59,gender="female")
g

#We can test if its an S4 object as follows
isS4(g)

#We can access a variable component using @ e.g
g@"gender"
g@height

#Creating your own method in S4.We use the setMethod()function. 
setMethod("show","bmi",function(object){
cat(object@height,"is height of person\n")
cat("weightin kg",object@weight,"\n")
cat("gender",object@gender,"\n")})
g






  

  







