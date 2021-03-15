
<!-- README.md is generated from README.Rmd. Please edit that file -->

# triviaq

<!-- badges: start -->
<!-- badges: end -->

The goal of triviaq is to provide an interface to the [Open Trivia
Database](https://opentdb.com/). You can access and download samples of
the questions available and make them available from within R.

## Installation

You can install the released version of triviaq from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("triviaq")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("condwanaland/triviaq")
```

## Example

To download questions, simply call `get_questions()`

``` r
library(triviaq)
dat <- get_questions(number = 10)
dat
#>                      category     type difficulty
#> 1  Entertainment: Video Games multiple     medium
#> 2         Entertainment: Film multiple     medium
#> 3   Entertainment: Television multiple     medium
#> 4           General Knowledge  boolean     medium
#> 5        Entertainment: Music multiple       easy
#> 6            Science: Gadgets multiple       easy
#> 7            Science & Nature multiple     medium
#> 8                      Sports multiple       easy
#> 9  Entertainment: Video Games  boolean       easy
#> 10 Entertainment: Video Games  boolean     medium
#>                                                                                        question
#> 1                             Who was the mascot of SEGA before &quot;Sonic the Hedgehog&quot;?
#> 2                     Who voiced the character Draco in the 1996 movie &#039;DragonHeart&#039;?
#> 3  In the original Doctor Who series (1963), fourth doctor Tom Baker&#039;s scarf was how long?
#> 4                                                    You are allowed to sell your soul on eBay.
#> 5                              In Mean Girls, who has breasts that tell when it&#039;s raining?
#> 6                                                                    When was the DVD invented?
#> 7                                   What is the largest living organism currently known to man?
#> 8                                            Which player holds the NHL record of 2,857 points?
#> 9                                        There are 2 player roles in Trouble in Terrorist Town.
#> 10                           In the Resident Evil series, Leon S. Kennedy is a member of STARS.
#>                                                  possible_answers
#> 1                              Alex Kidd; Opa Opa; NiGHTS; Ristar
#> 2  Sean Connery; Dennis Quaid; Pete Postlethwaite; Brian Thompson
#> 3                         7 Meters; 10 Meters; 2 Meters; 5 Meters
#> 4                                                      True/False
#> 5           Karen Smith; Gretchen Weiners; Janice Ian; Cady Heron
#> 6                                          1995; 2000; 1990; 1980
#> 7          Honey Fungus; Blue Whale; Redwood Tree; The Coral Reef
#> 8       Wayne Gretzky; Mario Lemieux ; Sidney Crosby; Gordie Howe
#> 9                                                      True/False
#> 10                                                     True/False
#>    correct_answer
#> 1       Alex Kidd
#> 2    Sean Connery
#> 3        7 Meters
#> 4           False
#> 5     Karen Smith
#> 6            1995
#> 7    Honey Fungus
#> 8   Wayne Gretzky
#> 9           False
#> 10          False
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
#>                                                                                                                                  question
#> 1                                                              The Rio 2016 Summer Olympics held it&#039;s closing ceremony on what date?
#> 2                    In Baseball, how many times does the ball have to be pitched outside of the strike zone before the batter is walked?
#> 3                                                                                                         What team won the 2016 MLS Cup?
#> 4  This Canadian television sportscaster is known for his &quot;Hockey Night in Canada&quot; role, a commentary show during hockey games.
#> 5                                                                                    Which team has won the most Stanley Cups in the NHL?
#> 6                                                                                  When was the first official international game played?
#> 7                                                                   What is the most common type of pitch thrown by pitchers in baseball?
#> 8                                                                          What team did England beat to win in the 1966 World Cup final?
#> 9                                                   Which African American is in part responsible for integrating  Major League baseball?
#> 10                                                                &quot;Stadium of Light&quot; is the home stadium for which soccer team?
#>                                                                  possible_answers
#> 1                                      August 21; August 23; August 19; August 17
#> 2                                                                      4; 1; 2; 3
#> 3                  Seattle Sounders; Colorado Rapids; Toronto FC; Montreal Impact
#> 4                        Don Cherry; Don McKellar; Don Taylor ; Donald Sutherland
#> 5  Montreal Canadians; Chicago Blackhawks; Toronto Maple Leafs; Detroit Red Wings
#> 6                                                          1872; 1880; 1863; 1865
#> 7                                         Fastball; Slowball; Screwball; Palmball
#> 8                                    West Germany; Soviet Union; Portugal; Brazil
#> 9                     Jackie Robinson; Curt Flood; Roy Campanella; Satchell Paige
#> 10           Sunderland FC; Barcelona FC; Paris Saints-Germain; Manchester United
#>        correct_answer
#> 1           August 21
#> 2                   4
#> 3    Seattle Sounders
#> 4          Don Cherry
#> 5  Montreal Canadians
#> 6                1872
#> 7            Fastball
#> 8        West Germany
#> 9     Jackie Robinson
#> 10      Sunderland FC
```

To view all available categories, `triviaq` provides a helper function
`get_categories`, which provides a dataframe of all available
categories.

``` r
categories <- get_categories()
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
