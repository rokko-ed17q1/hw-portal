insert = function(ID, Deadline, Description, Link, file = "data/hw.Rds") {
  data <- readRDS(file)
  data <- tibble::add_row(data, 
                          ID = ID, 
                          Deadline = Deadline, 
                          Description = Description, 
                          Link = Link)
  saveRDS(data, file)
  knitr::knit("README.Rmd")
}