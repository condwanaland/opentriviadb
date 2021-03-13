get_questions <- function(number,
                          category,
                          difficulty = c("any", "easy", "medium", "hard"),
                          type = c("any", "multiple", "boolean")){

  baseurl <- "https://opentdb.com/api.php?"
  number <- as.numeric(number)
  numbered_url <- paste0(baseurl, "amount=", number)

  return(numbered_url)
}

create_api_call <- function(){

}
