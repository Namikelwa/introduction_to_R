###Formatting dates in R
#Converting character variable to date type variable
#That is from e.g 26/5/2020 to 5-26-2020

my_data$date <- as.Date(my_data$date, format="%m/%d/%y") 
#or we could use this below if we run into errors
#my_data is a dataframe 
#date is a variable with a list of dates
my_data$date <- as.Date(as.character(my_data$date), format="%m/%d/%y")
#as.character is used when the variable is type factor...we convert it to character before converting the date type.

#Verify that the conversion worked and that the variable type has changed from character/factor to type date
str(my_data)
