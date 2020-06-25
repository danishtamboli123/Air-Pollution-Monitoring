table1 <- data.frame()
complete <- function(directory = "specdata", id = 1:332) {
  for(current_id in id){
    current_id <- sprintf("%03d",current_id)
    final_directory <- paste(directory, "/", current_id, ".csv", sep="")
    Readings <- read.csv(final_directory)
    complete_readings <- complete.cases(Readings)
    complete_readings <- length(complete_readings[complete_readings == TRUE])
    table1 <- rbind(table1,data.frame("ID" = current_id, "nobs" = complete_readings))
  }
  table1
}