mydata = read.csv('st_data.csv')
duration = mydata$midterm
print(range(duration))
print(floor(mean(duration)))
print(floor(var(duration)))
print(floor(sd(duration)))

breaks = seq(0,100,by=10)
duration.cut = cut(duration, breaks, right=FALSE)
mid.freq = table(duration.cut)
result = cbind(mid.freq)
print(result)

bmp(file="aa.bmp")
hist(duration, right=FALSE, main = "Frequency", xlab="Midterm Exam", ylab="Count")

dev.off()

final = mydata$final

bmp(file="bb.bmp")

plot(duration, final, main="Scatter", xlab="Midterm Exam", ylab="Final Exam" )

dev.off()
