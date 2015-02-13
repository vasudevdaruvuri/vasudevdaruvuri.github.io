library(sqldf)
library(tcltk)

sampleDist = function(n) { 
    sample(x = c(0,1,2,3,4), n, replace = T, prob = c(0.1, 0.4, 0.3, 0.1,0.1)) 
}
df <- data.frame(name=1, parname=0, gen=1)
k <- 1
for(i in 1:9){
    if(k==1){
        noff <- 0
        while(noff==0){
            noff <- sampleDist(1) 
        }
        maxn <- max(df[,"name"])
        for(m in 1:noff){
           df <- rbind(df, c(maxn+m, 1, k+1)) 
        }
        k <- k+1
    }else{
        if(sum(df[,"gen"]==k)!=0){
            par <- df[df[,"gen"]==k,]
            for(j in 1:nrow(par)){
                noff <- sampleDist(1)
                maxn <- max(df[,"name"])
                if(noff!=0){
                    for(l in 1:noff){
                        df <- rbind(df, c(maxn+l, par[j,"name"], k+1)) 
                     }
                }
            }
            k <- k+1
        }
    }
    
}
print(df)

gencount <- sqldf("select gen,count(*) as OffspringCount from df group by gen");

plot(gencount$gen,log(gencount$OffspringCount),xlab = "Generation",ylab = 'log of(No of Offsprings)',main = 'Offspring Distribution by Generation')

