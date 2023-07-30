library(googlesheets4)
library(googledrive)
library(httr)


get_info <- function(query){

  gs4_deauth()
  
  google_sheet <- read_sheet("https://docs.google.com/spreadsheets/d/10c3GOoptx239HRBjOxXrRBVpq0ieKty9JpjwxSgDj5A/edit?usp=sharing")



for(i in 1:nrow(google_sheet)){
  if(tolower(google_sheet$Query[i]) == tolower(query)){
    print(query)
    
    #tracker <- read_sheet("https://docs.google.com/spreadsheets/d/1QnM1sDWuX5zzCNZ4fm4uP2cTGjHtYXAlNS9t-T0ZBB8/edit?usp=sharing")
    #length <- nrow(tracker) + 1
    
    ### Write new row to tracker
    
   # tracker[length,1] <- google_sheet$Company[i]
   # tracker[length,2] <- google_sheet$Position[i]
   # tracker[length,3] <- query
   # tracker[length,4] <- Sys.Date()
   # tracker[length,5] <- Sys.time()
      
      #sheet_write(tracker, ss = "https://docs.google.com/spreadsheets/d/1QnM1sDWuX5zzCNZ4fm4uP2cTGjHtYXAlNS9t-T0ZBB8/edit?usp=sharing", sheet = "Sheet1")
      
      return(paste("Dear hiring manager, Thank you for the opportunity to apply for the ", google_sheet$Position[i], " Position. I am extreamly excited for the chance to work at a company as exciting as ",google_sheet$Company[i],"!", sep = ""))
  }
}

  
  

return("")


}






