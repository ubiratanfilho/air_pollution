library(tidyverse)

corr <- function(directory, threshold=0){
        list_files <- list.files(directory)
        
        df_complete <- complete(directory)
        
        df_complete <- df_complete %>% filter(nobs>400)
        id <- df_complete$id
        
        out <- c()
}
