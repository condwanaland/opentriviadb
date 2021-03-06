% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_questions.R
\name{get_questions}
\alias{get_questions}
\title{get_questions}
\usage{
get_questions(
  number = 10,
  category,
  difficulty = c("any", "easy", "medium", "hard"),
  type = c("any", "multiple", "boolean")
)
}
\arguments{
\item{number}{Number of questions to return. Max of 50.}

\item{category}{Category of questions. Leave blank for random categories.}

\item{difficulty}{Difficulty of questions.}

\item{type}{Multiple choice or true/false questions.}
}
\value{
Dataframe of questions and answers
}
\description{
Document
}
\examples{
library(opentriviadb)
if (curl::has_internet()){
dat <- get_questions(2, "General Knowledge", "medium", "boolean")
}
}
