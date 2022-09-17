mydata = read.csv('st_data.csv')
print(nrow(mydata))
print(ncol(mydata))

filtereddata <- mydata[mydata$final==50,]
print(filtereddata)
print(filtereddata[c("ID","final","midterm")])
