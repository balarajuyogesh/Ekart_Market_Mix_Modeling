library(fs)

make_project_dir <- function() {
  dirnames <- c(
    "00_Data",
    "00_Scripts",
    "01_Business_Understanding",
    "02_Data_Understanding",
    "03_Data_Preparation",
    "04_Modeling",
    "05_Evaluation",
    "06_Deployment",
    "Images"
  )
  # Create folder if not exisits
  for(i in 1:length(dirnames)) {
    if(!(dirnames[i] %in% dir_ls())) dir_create(dirnames[i])
  }
  
  # List the directories
  dir_ls()
}

make_project_dir()
