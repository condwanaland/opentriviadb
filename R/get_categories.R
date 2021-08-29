#' get_categories
#'
#' Get all available categories and their ids
#'
#' @return A 2 column dataframe of category and id
#' @export
#'
#' @examples
#' library(opentriviadb)
#' get_categories()
#'
#get_categories <- function(){

  # if (!isConnected()){
  #   message("No Internet Connections")
  #   return(NULL)
  # }
  # cats <- httr::GET("https://opentdb.com/api_category.php")
  # cats <- httr::content(cats, 'parsed')
  # cats <- cats$trivia_categories
  # cats <- lapply(cats, as.data.frame)
  # cats <- dplyr::bind_rows(cats)
  # names(cats)[names(cats) == "name"] <- "categories"

#  data("categories")

#}

