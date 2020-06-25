sum_mean=0
pollutantmean <- function(directory = "specdata", pollutant = "nitrate", id = 1:332) {
  for(current_id in id){
    
    current_id <- sprintf("%03d",current_id)
    final_directory <- paste(directory, "/", current_id, ".csv", sep="")
    Readings <- read.csv(final_directory)
    pollutant_readings <- Readings[pollutant]
    total_pollutant_readings <- c(total_pollutant_readings,pollutant_readings[!is.na(pollutant_readings)])
    
  }
  mean(total_pollutant_readings)
}