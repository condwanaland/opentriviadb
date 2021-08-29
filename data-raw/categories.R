cats <- httr::GET("https://opentdb.com/api_category.php")
cats <- httr::content(cats, 'parsed')
cats <- cats$trivia_categories
cats <- lapply(cats, as.data.frame)
categories <- dplyr::bind_rows(cats)
names(categories)[names(categories) == "name"] <- "categories"

usethis::use_data(categories, overwrite = TRUE)
