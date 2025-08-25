####Today we're going to learn more about data structures, specifically matrices as well as normal qq plots and FOR loops.####

####Lets begin with creating a dataset in matrix form, we will call this matrix 'x' for simplicity#####

x = matrix(0,5,4)
x

###What did matrix(0,5,4) do?

#What if I don't want all zeroes in my matrix, there are a few ways that we can go about doing this.  The first is to manually update the matrix one entry, row or column at a time.  Like vectors, the individual values of the matrix x are referenced using x[ ].  However, unlike a vector, each value has two identifiers, namely the row and column.  Lets try and change the second row, first column value of our matrix x to the number 1###

x[2,1] = 1
x

###Notice that the first number inside the [ ] is the row and the second number inside the [ ] is the column.  What if I wanted to do an entire row at a time.  For example, pretend we want to change the first row to 1,2,3,4 .  ###

x[1,]  = c(1,2,3,4)
x

####Likewise, if I want to make the fourth column -5,2,6,-1,4 I can do the following####

x[,4] = c(-5,2,6,-1,4)
x

###So far we've changed our matrix by changing the values individually after starting with a matrix where all the values were zero.  what if I wanted to create the same matrix, but I wanted to start with values other than zero in the matrix.###

1:20

matrix(1:20,ncol=4)

matrix(1:20,nrow=5)

matrix(1:20,nrow=5,byrow = T)

####Okay, lets move on.  Tomorrow in class we will be spending a ton of time going over the normal distribution.  We will soon discuss normal quantile plots.  Just so you know how to make them in R, lets look at two variables, one that is normally distributed, another that clearly isn't.  Lets download our student.csv file again and look at the distances students are commuting to campus.  Don't forget to download the csv file and change your directory to the desktop.###

student = read.csv("student.csv",h=T)
attach(student)
hist(commute,breaks=9)

###Clearly Commute is a variable that is skewed to the right, lets look at what a normal quantile plot looks like for a distribution that is not normal.###

qqnorm(commute)

###Now lets create a variable that is normally distributed.  We can do this using the rnorm function.  rnorm takes three arguments, the number of items you want in your dataset, the mean of those items and the standard deviation of those items###

norm.data = rnorm(500,10,2)

norm.data

hist(norm.data,breaks=20)

qqnorm(norm.data)

####Finally, FOR loops.  Do loops are one of the cornerstones of statistical programming for repeating algorithms.  A FOR statement is a statement in which you tell the program to repeat a process a certain number of times.  For example let's suppose I want to create the fibonacci sequence for the first 10 numbers in the sequence.  Lets start the sequence off with two 1's####

fib.seq = rep(0,10)
fib.seq[1] = 1
fib.seq[2] = 1

fib.seq

for(i in 3:10){
    fib.seq[i] = fib.seq[i-1] + fib.seq[i-2]
}

fib.seq

####You can use several FOR loops at once.  For example, lets suppose I want to fill out a matrix to give us pascals triangle.  Now in Pascals triangle, each new entry in a row is the sum of the same entry in the previous row and the previous entry in the previous row, lets start with a blank matrix with all zeroes except for the first row and first column entry, which should be one####

pascal = matrix(0,10,10)
pascal[,1] = 1
pascal

###update each row at a time, starting with the second and ending with the 10th, and within each row we want to update all ten entries###

for(i in 2:10){
    for(j in 2:10){
        pascal[i,j] = pascal[i-1,j] + pascal[i-1,j-1]
    }
}

pascal


####This concludes our second tutorial in R.  We will use for loops when we do a simulated proof of the central limit theorem after the first midterm.  Future topics in R will involve DO loops, IF/ELSE statements and the FUNCTION statement.  FOR, DO, IF/ELSE and FUNCTION are the cornerstones of basic programming in the R environment######