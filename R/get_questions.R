get_questions <- function(number,
                          category,
                          difficulty = c("any", "easy", "medium", "hard"),
                          type = c("any", "multiple", "boolean")){

  diff <- match.arg(difficulty)

  baseurl <- "https://opentdb.com/api.php?"
  number <- as.numeric(number)
  numbered_url <- paste0(baseurl, "amount=", number)

  ## Category
  category_string <- make_category_string(category)

  ## Difficulty
  difficulty_string <- make_difficulty_string(diff)

  return(difficulty_string)

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

create_api_call <- function(){

}
