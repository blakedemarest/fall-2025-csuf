##This week we're going to take a look at the 'function' call in R.  
##Building your own functions can be incredibly helpful and time saving if executed effectively
##Some examples of basic functions include computing complex summaries, computing running averages
##Simulating processes and (as will be our final example) rapidly using the binomial equation.

###Here's how the function call works, I'm going to create a basic function that simple computes the variance
###variance of a vector

variance.function = function(vector){
	k.mean = mean(vector)
	k.variance = sum((vector - mean(vector))^2)/(length(vector) - 1)
	k.variance
}

###Notice the syntax.  Its 

#your.functions.name = function(input1,input2,input3...){
#		stuff 
#		to 
#		do
#		final.output
#}

#Lets try out our function

variance.function(c(1,2,3,4,5))

x = c(1,2,3,4,5)
variance(x)

#What about the variables we used in the function, can we call them after the function?

k.mean

k.variance

###What if we want our function to include more than one variable?  Lets say we want to edit our function so that it now outputs the mean and the variance of our dataset.   Essentially we are going to include several outputs as a single output (either in vector or dataframe form)

variance.function2 = function(vector){
	k.mean = mean(vector)
	k.variance = sum((vector - mean(vector))^2)/(length(vector) - 1)
	final.output = c(k.mean,k.variance)
	final.output
}

variance.function2(x)

###or alternatively....

variance.function3 = function(vector){
	k.mean = mean(vector)
	k.variance = sum((vector - mean(vector))^2)/(length(vector) - 1)
	final.output = c()
	final.output$mean = k.mean
	final.output$variance = k.variance
	final.output
}

variance.function3(x)
variance.function3(x)$mean
variance.function3(x)$variance

output3 = variance.function3(x)
output3$mean
output3$variance

###Ultimately there are more options for how you want to package your final product from a function and as you grow as an R programmer you will undoubtedly encounter new techniques for packaging results.  Now, lets see the advantage of using functions.  For practice, lets try and create a function called binomial that takes three input arguments (n,k,p) and outputs the probability that you have k successes out of n trials with probability of a single success equaling p.  (for n choose k you can use the built in R function choose(n,k) or if you'd like to manually do things you can use factorial(x) to do the factorials manually).  Once you've programmed your binomial function, go ahead and use it to find the probability that you flip a coin three times and get 2 heads.
























#####Hopefully you came up with something like

binomial = function(n,k,p){
	output = choose(n,k)*(p^k)*((1-p)^(n-k))
	output
}

binomial(3,2,.5)

####Lastly, you can call functions within functions or FOR loops within functions.  Lets suppose I wanted to compute something that required the binomial equation several times, I could create a function that uses a for loop to call the binomial function several ti es.  For example, in class we attacked the following question using the C.L.T. "55% of students at CSUF are active, whats the probability that you sample 400 students and more than 50% are active" and we got a final answer of .9772 (although after a discrete variable correction we should have gotten .9744 but nevermind about that).  Alternatively we could have just used the binomial equation 200 times to find the answer.  By hand this would take all year, but could we come up with a savy computer program that inputs the number of trials, the minimum number of successes and the probability of a single event success and then computes the probability you get AT LEAST that many successes.

at.least.k = function(n,k,p){
	aggregate.probability = 0
	for(i in k:n){
		aggregate.probability = aggregate.probability + binomial(n,i,p)
	}
	aggregate.probability
}

at.least.k(400,201,.55)

###That concludes this weeks tutorial.