######Section 1 Reading and Creating Data in R##########

###Create a single variable called "dummievar"###

dummievar = c(1,3,4,5,5,6,6,6,6,7,7)

###Now type in dummievar###

dummievar

###Now that our dataset dummievar is defined we can start###
###to do stuff with it.  Lets do some basic arithmetic ###
###operations.  As well as some basic summaries and displays###

dummievar*2

dummievar^2

mean(dummievar)

summary(dummievar)

hist(dummievar)

var(dummievar)

sd(dummievar)

###Now for a slightly more grown up example.  Go to titanium, 
###under week one there should be a dataset called student.csv in
 ###week one.  Download the dataset onto your desktop.  Now, R is
 ###going to need to know the path to search for the dataset, 
###rather than trying to figure out the path, it is probably 
###easier just to have R start searching in the desktop.  On your
 ###top menu, go to Misc -> Change Working Directory and select
 ###the desktop.  Now lets read the data set in. lets call it 
###"practice"

practice = read.csv("student.csv",h=T)

practice

###Now if we want to analyze each of the variables separately, 
###We can do it one of two ways.  First we can access them
### as variables within the data set using the "$" sign.

practice$height

###Alternatively, if we only have one dataset with each variable
###Its helpful to create them as their own variables using
### "attach"

attach(practice)

height

weight

commute

gender

###Now lets have some fun with this dataset.  Lets see if there is
### a correlation between height and weight. Do you think there ###will be?  First lets plot and describe the association

plot(height,weight)

cor(height,weight)



###What about between height and commute?###
###Again, lets first plot and describe the association###

plot(height,commute)

cor(height,commute)

###What if I want to make a histogram of the weight variable?


hist(height,breaks=8)

###Hmmm...looks bimodal, perhaps we'd like to analyze males and females separately.  Heres how you could subset the variable height by gender###

height[gender=="M"]

height[gender=="F"]

###I could keep referencing them this way, or alternatively I 
###could just make new variables male.h, female.h

male.h = height[gender=="M"]
female.h = height[gender=="F"]

###Now lets make two histograms, one for males, one for females.###

par(mfrow = c(2,1))
hist(male.h,breaks=10,xlim=c(60,78))
hist(female.h,breaks=8,xlim=c(60,78))

###and that concludes our basic R learner.