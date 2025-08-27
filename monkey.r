### find a simulated pvalue for the cooling system problem

#H0: p = 0.20 , n = 100, obs p.hat = 0.15

#step 1: take 10000 samples of size 100 where each observation has a 20% 
#change of being a cooling system failure

#step 2: time to repeat step 1 10000 times, each time computing the proportion (or)
#Number of failures in each sample

#start with vector of 0s that we will find out

sim.phat = rep(0, 10000)

# implement a loop where we compute the average of each simulation and store that number
#in phat

for(i in 1:10000){
    sim.phat[i] = mean(sample(c(1,0), 100, replace = TRUE, prob = c(0.2, 0.8)))
}

#step 3: make a histogram, compute p.value directly

pval1 = length(sim.phat[sim.phat < 0.15])/10000
pval1
