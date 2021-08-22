library(tidyverse)

complete <- function(directory, id = 1:332){
        # returns a dataframe with the `id` and correspondent number of completed rows ( when both `sulfate`
        # and `nitrate` not NA values
        list_files <- list.files(directory)
        
        
        df <- data.frame(id=integer(), nobs=integer(), stringsAsFactors = FALSE)
        for (i in id){
                path <- paste(directory, list_files[i], sep="/")
                df_pol <- read.csv(path)
                
                df <- df %>% add_row(id=i, 
                                     nobs=nrow(df_pol %>% 
                                                         filter(!is.na(sulfate) 
                                                         & !is.na(nitrate)))
                                     )
        }       
        df
 }

