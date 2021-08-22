pollutantmean <- function(directory, pollutant="sulfate", id=1:332){
        list_files <- list.files(directory)
        
        sums <- 0
        len <- 0
        for (i in list_files[id]){
                path <- paste(directory, i, sep="/")
                df <- read.csv(path)
                df_col <- df[pollutant]
                df_col <- df_col[!is.na(df_col)]
                sums <- sums + sum(df_col)
                len <- len + length(df_col)
        }
        sums / len
}

