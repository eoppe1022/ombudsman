#' Translates text to Canes Ombudsman-speak
#' 
#' Returns text translated to Canes Ombudsman-speak
#'
#' @param text A string of text to be translated to Ombudsman. Text must be within quotes (" ").
#' @examples 
#' 
#' translate_to_ombudsman("I would love to forgive John Forslund")
#' 
#' translate_to_ombudsman("Would you consider trading William Nylander for Sebastian Aho 1 for 1?")
#'   
#' @export
#' @import dplyr
#' 
translate_to_ombudsman <- function(text) {
  
  ombudsman_text <- text %>%
    tolower() %>%
    stringr::str_replace_all(c("\\bfour\\b" = "4", 
                               "\\bfor\\b" = "4",
                               "\\braleigh\\b" = "raleigh-durham",
                               "\\bforslund\\b" = "4slund",
                               "\\bwilliam\\b" = "willy",
                               "\\bnylander\\b" = "nelander",
                               "\\bsebastian aho" = "sebastian asshole",
                               "\\bleafs\\b" = "leaves",
                               "\\bjoking\\b" = "jokeing",
                               "\\bgiving\\b" = "giveing",
                               "\\bhoping\\b" = "hopeing",
                               "\\btrying\\b" = "tryeing",
                               "\\btaking\\b" = "takeing",
                               "\\bliking\\b" = "likeing",
                               "\\bdrinking\\b" = "drinkeing",
                               "\\bincoming\\b" = "incomeing",
                               "\\busing\\b" = "useing",
                               "\\bmotivation\\b" = "motiveation",
                               "\\bhorny\\b" = "horney",
                               "\\breally\\b" = "rly",
                               "\\baccount\\b" = "acct",
                               "\\blittle\\b" = "lil",
                               "\\btheir\\b" = "there",
                               "\\btheyre\\b" = "there",
                               "\\bthey're\\b" = "there",
                               "\\bin my opinion\\b" = "imo",
                               "\\bto be honest\\b" = "tbh",
                               "\\bsee\\b" = "c",
                               "\\bsorry\\b" = "sry",
                               "\\binto\\b" = "n 2",
                               "\\bevan\\b" = "even",
                               "\\bhell\\b" = "he'll", 
                               "\\bto\\b" = "2",
                               "\\btwo" = "2",
                               "\\btoo\\b" = "2",
                               "\\bone\\b" = "1",
                               "\\bwon\\b" = "1",
                               "\\bforgave\\b" = "4gave",
                               "\\bforgive" = "4give",
                               "\\btomorrow\\b" = "2morrow",
                               "\\bsomeone\\b" = "some1",
                               "\\banyone\\b" = "any1",
                               "\\beveryone\\b" = "every1",
                               "\\btonight\\b" = "2night",
                               "\\bbefore\\b" = "b4",
                               "\\bbe\\b" = "b",
                               "\\bwhy\\b" = "y",
                               "\\bin\\b" = "n",
                               "\\bare\\b" = "r",
                               "\\byou\\b" = "u",
                               "\\byou're\\b" = "ur",
                               "\\byour\\b" = "ur", 
                               "\\bwould\\s*have\\b" = "woulda",
                               "\\.\\.\\.|\\." = ","))
  
  if (nchar(ombudsman_text) >  0) {
  
    ombudsman_text <- ombudsman_text %>%
      ifelse(stringr::str_sub(., -1) == ",", ., stringr::str_c(., ","))
  
  }
    
  random_number <- sample(1:3000, size = 1)
  
  if (random_number < 2000) {
    
    ombudsman_text <- ombudsman_text %>%
      stringr::str_replace_all(c("ombudsman" = stringr::str_c("omb", stringi::stri_rand_shuffle("udsman"))))
    
  }
  
  random_number <- sample(1:3000, size = 1)
  
  if (random_number %% 2 == 0) {
    
    ombudsman_text <- ombudsman_text %>%
      stringr::str_replace_all(c("\\bthanks\\b" = "thabks"))
    
  } else {
    
    ombudsman_text <- ombudsman_text %>%
      stringr::str_replace_all(c("\\bthanks\\b" = "tha ks"))
    
  }
  
  random_number <- sample(1:3000, size = 1)
  
  if (random_number %% 2 != 0) {
    
    ombudsman_text <- ombudsman_text %>%
      stringr::str_replace_all(c("i'" = "i '"))
    
  }
  
  random_number <- sample(1:3000, size = 1)
  
  if (random_number < 2000) {
    
    ombudsman_text <- ombudsman_text %>%
      stringr::str_replace_all(c("\\b([a-z]{3,})s\\b" = "\\1's"))
    
  }
  
  return(ombudsman_text)
  
}

