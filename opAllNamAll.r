#### Read in csv files ####
file_list <- list.files(path = datapath, pattern = "*.csv")

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for (i in 1:length(file_list)){
  assign(file_path_sans_ext(file_list[i]),
         read.csv(paste(datapath, file_list[i], sep = "/"))
  )}
