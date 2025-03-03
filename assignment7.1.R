#creating S3 method
isNA = function(eatsBreakfast=TRUE, myFavorite="ceral")  {
  me = list(hasBreakfast = eatsBreakfast, favoriteBreakfast = myFavorite)
  ## Set the name for the class 
class(me) = append(class(me), "North American")
return(me) 
} 


isNA = function(eatsBreakfast=TRUE, myFavorite="cereal")
{
me = list(hasBreakfast = eatsBreakfast, favoriteBreakfast = myFavorite)
attr(me,"class") = "NorthAmerican“
me
}


bubba = isNA()				#Creates the Object
bubba					#Displays the contents
bubba$hasBreakfast			#Calls a variable inside the object
otype(bubba)				#Displays the object type

fu = isNA(eatsBreakfast=TRUE, myFavorite = “fried eggs”)
fu
fu$myFavorite
otype(fu)




#create S4 object
FirstQuadrant <- setClass("FirstQuadrant",
slots = c(x = "numeric", y = "numeric"), prototype = list(x = 0.0, y = 0.0),
validity = function(object){
if((object@x < 0) || (object@y < 0 )){
return("A negative was given")} 	else{return(TRUE)}
}
)


#something wrong with the beginning of this code
#won't let me run anything further -> reverts back to error
#i copied exactly from powerpoint? weird

