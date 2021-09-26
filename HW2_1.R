n<-floor(runif(1,-10,10))
if( n <0){
  res <- -n
}else{
  res<- n
}
print(res)
res <- ifelse(n<0,-n,n)
print(res)


fibo <- function(n){
  if(n <3){
    
    return (1)
  }
  else if(n>2){
    
    return ((fibo(n-1))+(fibo(n-2)))
  }
}

# generating 9 random numbers(200~500)
num <- sample(x=200:500,size=9)

# append "100000" in the vector 'num'
num <-append(num,100000)
print(num)
#function of mean
my_mean <- function(num){
  return (sum(num) / length(num))
}

#function of median
my_median <-function(num){
  num1 <-sort(num)
  if(length(num)%%2 == 1){
   
    return(num[celiling(length(num1)/2)])
    
  }
  else if(length(num) %% 2 == 0){
  
    return ((num1[length(num)/2]+num1[(length(num)/2)+1])/2)
  }
  
}

#check my_mean() and my_median() are correct.
cat(mean(num),my_mean(num))
cat(median(num),my_median(num))

#t-test



