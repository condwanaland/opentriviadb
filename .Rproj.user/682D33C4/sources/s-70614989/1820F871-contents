library(httr)
library(jsonlite)
library(tidyr)
qs <- GET("https://opentdb.com/api.php?amount=20")


#' parse_raw_data
#'
#' Parses the initial response from the API call. Output can have either 6 columns (boolean question) or 8 columns (multiple choice question).
#'
#' @param unparsed_data The result of a `GET` call to the OpenTriviaDB API
#'
#' @return A dataframe of either 6 or 8 columns
#'
parse_raw_data <- function(unparsed_data){
  dat_parsed <- httr::content(unparsed_data, 'parsed')
  dat <- dat_parsed$results

  dat <- lapply(dat, function(x){
    as.data.frame(x)
  })

  return(dat)
}

add_trivia_class <- function(parsed_data) {
  parsed_class <- lapply(parsed_data, function(x){
    dims <- dim(x)
    dims <- dims[2]
    if(dims == 8){
      class(x) <- append("trivia_multi_choice", class(x))
    }
    else if (dims == 6){
      class(x) <- append("trivia_boolean", class(x))
    }
    else {
      stop("Field does not match the attributes of either the multi-choice or the boolean questions. Please file a bug report on github")
    }
    return(x)
  })
}

parsed <- parse_raw_data(qs)
parsed_class <- add_trivia_class(parsed)
parsed_data <- lapply(parsed_class, parse_trivia_df)





