library(tidyverse)
library(readr)


#set the working directory to the ARETT package
setwd("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R")

#source all the ARETT functions from the R folder
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/calculate_velocity.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/classify_iaoi.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/classify_idt.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/classify_ivt.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/discard_short_fixations.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/gap_fill.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/merge_fixations_iaoi.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/merge_fixations_idt.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/merge_fixations_ivt.R")
source("C:/Users/thoma/OneDrive - University of Glasgow/Documents/R/ARETT-R-Package-master/R/noise_reduction.R")

#read in the data
dataFolder = "D:/Hololens_ARETT_Data"

#Create a list of all the datafiles in the folder, and then convert to a list object - needs full names for the file path
file_list <- list.files(path = dataFolder, pattern = ".csv$", all.files = TRUE, full.names = TRUE, recursive = TRUE)

#Loop through the datafiles in file_list, assign them a name and then read them in
for(i in 1:length(file_list))
{
  assign(paste(substr(file_list[i],24,27)), read.csv(paste0(file_list[i])))
}

