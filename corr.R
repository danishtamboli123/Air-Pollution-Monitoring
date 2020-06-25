correlation <- vector()
corr <- function(directory = "specdata", threshold =0 , id = 1:332) {
  for(current_id in id){
    
    current_id <- sprintf("%03d",current_id)
    final_directory <- paste(directory, "/", current_id, ".csv", sep="")
    Readings <- read.csv(final_directory)
    
    complete_readings <- na.omit(Readings)
    complete_readings
    number_complete_readings <- nrow(complete_readings)
    
    sulfate_readings <- complete_readings["sulfate"]
    nitrate_readings <- complete_readings["nitrate"]
    
    if (number_complete_readings>threshold){
      correlation <- c(correlation,cor(sulfate_readings,nitrate_readings))
    }
  }
  correlation
}