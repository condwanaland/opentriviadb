
<!-- README.md is generated from README.Rmd. Please edit that file -->

# opentriviadb

<!-- badges: start -->
<!-- badges: end -->

The goal of opentriviadb is to provide an R interface to the [Open
Trivia Database](https://opentdb.com/). You can access and download
samples of the questions available and make them available from within
R.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("condwanaland/opentriviadb")
```

## Example

To download questions, simply call `get_questions()`

``` r
library(opentriviadb)
dat <- get_questions(number = 10)
dat
#>                                 category     type difficulty
#> 1                      General Knowledge  boolean       easy
#> 2                   Entertainment: Music multiple       hard
#> 3                      General Knowledge  boolean     medium
#> 4             Entertainment: Video Games multiple       hard
#> 5  Entertainment: Japanese Anime & Manga  boolean       easy
#> 6                      General Knowledge multiple       hard
#> 7                     Science: Computers  boolean     medium
#> 8                              Mythology  boolean     medium
#> 9             Entertainment: Video Games multiple     medium
#> 10                               History multiple     medium
#>                                                                                        question
#> 1                                             The Great Wall of China is visible from the moon.
#> 2                      How many members are there in the idol group &quot;&micro;&#039;s&quot;?
#> 3                                                                   An eggplant is a vegetable.
#> 4                                                                When was Steam first released?
#> 5                             In Kill La Kill, the weapon of the main protagonist is a katana. 
#> 6                                      What is the romanized Korean word for &quot;heart&quot;?
#> 7                                                                      MacOS is based on Linux.
#> 8                                           In Greek mythology, Hera is the goddess of harvest.
#> 9  Who voices the infamous Citadel Station A.I known as S.H.O.D.A.N, in the System Shock games?
#> 10                                  Which Nazi General was known as the &quot;Desert Fox&quot;?
#>    correct_answer
#> 1           False
#> 2               9
#> 3           False
#> 4            2003
#> 5           False
#> 6         Simjang
#> 7           False
#> 8           False
#> 9   Terri Brosius
#> 10   Erwin Rommel
#>                                                     possible_answers
#> 1                                                         True/False
#> 2                                                        9; 48; 6; 3
#> 3                                                         True/False
#> 4                                             2003; 2004; 2011; 2007
#> 5                                                         True/False
#> 6                                 Simjang; Aejeong; Jeongsin; Segseu
#> 7                                                         True/False
#> 8                                                         True/False
#> 9              Terri Brosius;  Jennifer Hale; Jenn Taylor; Lori Alan
#> 10 Erwin Rommel; Gerd von Rundstadt; Wilhelm Keitel; Heinz Guderian
```

You can control the category, difficulty, and type (multiple
choice/boolean) of the returned questions

``` r
dat <- get_questions(10, category = "Sports", difficulty = "easy", type = "multiple")
dat
#>    category     type difficulty
#> 1    Sports multiple       easy
#> 2    Sports multiple       easy
#> 3    Sports multiple       easy
#> 4    Sports multiple       easy
#> 5    Sports multiple       easy
#> 6    Sports multiple       easy
#> 7    Sports multiple       easy
#> 8    Sports multiple       easy
#> 9    Sports multiple       easy
#> 10   Sports multiple       easy
#>                                                                                                                question
#> 1                                                                    Which team won the 2015-16 English Premier League?
#> 2                                              Which driver has been the Formula 1 world champion for a record 7 times?
#> 3                                                                         Which team won 2014 FIFA World Cup in Brazil?
#> 4  In Baseball, how many times does the ball have to be pitched outside of the strike zone before the batter is walked?
#> 5                                                                                       What team won the 2016 MLS Cup?
#> 6                                 Which boxer was banned for taking a bite out of Evander Holyfield&#039;s ear in 1997?
#> 7                                                 What is the most common type of pitch thrown by pitchers in baseball?
#> 8                                  Who won the premier league title in the 2015-2016 season following a fairy tale run?
#> 9                                                                            Who won the UEFA Champions League in 2017?
#> 10                                  In the 2014 FIFA World Cup, what was the final score in the match Brazil - Germany?
#>                                                  possible_answers
#> 1           Leicester City; Liverpool; Cheslea; Manchester United
#> 2    Michael Schumacher; Ayrton Senna; Fernando Alonso; Jim Clark
#> 3                         Germany; Argentina; Brazil; Netherlands
#> 4                                                      4; 1; 2; 3
#> 5  Seattle Sounders; Colorado Rapids; Toronto FC; Montreal Impact
#> 6      Mike Tyson; Roy Jones Jr.; Evander Holyfield; Lennox Lewis
#> 7                         Fastball; Slowball; Screwball; Palmball
#> 8          Leicester City; Tottenham Hotspur; Watford; Stoke City
#> 9  Real Madrid C.F.; Atletico Madrid; AS Monaco FC; Juventus F.C.
#> 10                                             1-7; 1-5; 1-6; 2-6
#>        correct_answer
#> 1      Leicester City
#> 2  Michael Schumacher
#> 3             Germany
#> 4                   4
#> 5    Seattle Sounders
#> 6          Mike Tyson
#> 7            Fastball
#> 8      Leicester City
#> 9    Real Madrid C.F.
#> 10                1-7
```

To view all available categories, `opentriviadb` provides a dataset
`categories`, which provides all available categories.

``` r
data("categories")
categories
#>    id                            categories
#> 1   9                     General Knowledge
#> 2  10                  Entertainment: Books
#> 3  11                   Entertainment: Film
#> 4  12                  Entertainment: Music
#> 5  13    Entertainment: Musicals & Theatres
#> 6  14             Entertainment: Television
#> 7  15            Entertainment: Video Games
#> 8  16            Entertainment: Board Games
#> 9  17                      Science & Nature
#> 10 18                    Science: Computers
#> 11 19                  Science: Mathematics
#> 12 20                             Mythology
#> 13 21                                Sports
#> 14 22                             Geography
#> 15 23                               History
#> 16 24                              Politics
#> 17 25                                   Art
#> 18 26                           Celebrities
#> 19 27                               Animals
#> 20 28                              Vehicles
#> 21 29                 Entertainment: Comics
#> 22 30                      Science: Gadgets
#> 23 31 Entertainment: Japanese Anime & Manga
#> 24 32   Entertainment: Cartoon & Animations
```

## Roadmap

-   Incorporate session tokens to eliminate repeated questions
-   Get more than 50 questions by repeatedly hitting the API and saving
    intermediates
