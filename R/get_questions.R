get_questions <- function(number=10,
                          category,
                          difficulty = c("any", "easy", "medium", "hard"),
                          type = c("any", "multiple", "boolean")){

  diff <- match.arg(difficulty)
  type <- match.arg(type)

  baseurl <- "https://opentdb.com/api.php?"
  number <- as.numeric(number)
  numbered_url <- paste0(baseurl, "amount=", number)

  ## Create strings for API URL
  category_string <- make_category_string(category)
  difficulty_string <- make_difficulty_string(diff)
  type_string <- make_type_string(type)

  # Paste URL
  api_url <- paste0(numbered_url,
                    category_string,
                    difficulty_string,
                    type_string)

  return(api_url)

}

make_category_string <- function(category){
  if (missing(category)){
    category_string <- ""
  }
  else{
    cats <- get_categories()
    cats <- dplyr::filter(cats, categories == category)
    cats <- dplyr::select(cats, id)
    cats <- cats[1,1]
    category_string <- paste0("&category=", cats)
  }

  return(category_string)
}

make_difficulty_string <- function(difficulty){
  if (difficulty == "any"){
    difficulty_string <- ""
  }
  else{
    difficulty_string <- paste0("&difficulty=", difficulty)
  }

  return(difficulty_string)
}

make_type_string <- function(type){
  if (type == "any"){
    type_string <- ""
  }
  else{
    type_string <- paste0("&type=", type)
  }

  return(type_string)
}

create_api_call <- function(){

}
