# Exercise 1

# load file 
load(file="assign1.RData")

# make a histogram of all five data vectors
hist(x1)
hist(x2)
hist(x3)
hist(x4) # here no.. but QQ-plot does show a line..
hist(x5)

# make a qqplot of all five data vectors
# could it be distributed from a normal distribution?
qqnorm(x1) # yes
qqnorm(x2) # no
qqnorm(x3) # yes
qqnorm(x4) # yes
qqnorm(x5) # no

###
# 2-sample t-test
###

# Exercise 2

# 2.1 

# set parameters
mu = nu = 180
m = n = 30
sd = 10

# compute p-value B times and store in p 
B=1000
p=numeric(B)
for (b in 1:B) {x=rnorm(m,mu,sd)
y=rnorm(n,nu,sd)
p[b]=t.test(x,y,var.equal=TRUE)[[3]]}

# how many p-values are smaller than .05?
sum(p<.05)

# how many p-values are smaller than .1?
sum(p<.1)

# make a histogram of the distribution
hist(p, prob=TRUE)

# 2.2

# set parameters
mu = nu = 180
m = n = 30
sd = 1

# compute p-value B times and store in p 
B=1000
p=numeric(B)
for (b in 1:B) {x=rnorm(m,mu,sd)
y=rnorm(n,nu,sd)
p[b]=t.test(x,y,var.equal=TRUE)[[3]]}

# how many p-values are smaller than .05?
sum(p<.05)

# how many p-values are smaller than .1?
sum(p<.1)

# make a histogram of the distribution
hist(p, prob=TRUE)


# 2.3

# set parameters
mu = 180
nu = 175
m = n = 30
sd = 6

# compute p-value B times and store in p 
B=1000
p=numeric(B)
for (b in 1:B) {x=rnorm(m,mu,sd)
y=rnorm(n,nu,sd)
p[b]=t.test(x,y,var.equal=TRUE)[[3]]}

# how many p-values are smaller than .05?
sum(p<.05)

# how many p-values are smaller than .1?
sum(p<.1)

# make a histogram of the distribution
hist(p, prob=TRUE)


# Exercise 3
# WIP

# set parameters
mu = nu = 180
m = n = 30
sd = 10

# compute p-value B times and store in p 
B=1000
p=numeric(B)
for (b in 1:B) {x=rnorm(m,mu,sd)
y=rnorm(n,nu,sd)
p[b]=t.test(x,y,var.equal=TRUE)[[3]]}

# compute the power of the test
power=mean(p<0.05)

# plot power as a function of nu
plot(nu, power)



