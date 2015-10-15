pollutantmean<-function(directory, pollutant, id=1:332) {
  across_pollutant<-numeric(0)
  for (i in id) {
    mon_file <- paste(paste(directory,id,sep='/'),"csv",sep'.')
    mon_data <- read.csv(mon_file)
    mon_pollutant<-mon_data[[pollutant]]
    across_pollutant<-c(across_pollutant,mon_pollutant[!is.na(mon_pollutant)])
    
  }
  if (length(across_pollutant)>0) result<-mean(across_pollutant)
  else result<-0
  
  result
}