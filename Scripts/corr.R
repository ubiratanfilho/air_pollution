library(tidyverse)

corr <- function(directory, threshold=0){
        # returns a vector of a correlation of nitrate and sulfate columns
        # in each csv file, selecting only the files that has more complete
        # cases than the given `threshold`
        
        list_files <- list.files(directory)
        
        df_complete <- complete(directory)
        
        df_complete <- df_complete %>% filter(nobs>400)
        id <- df_complete$id
        
        out <- c()
}
