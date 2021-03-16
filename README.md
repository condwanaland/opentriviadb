
<!-- README.md is generated from README.Rmd. Please edit that file -->

# opentriviadb

<!-- badges: start -->
<!-- badges: end -->

The goal of opentriviadb is to provide an interface to the [Open Trivia
Database](https://opentdb.com/). You can access and download samples of
the questions available and make them available from within R.

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
#>                      category     type difficulty
#> 1           General Knowledge multiple     medium
#> 2  Entertainment: Video Games multiple       hard
#> 3                    Vehicles  boolean     medium
#> 4        Entertainment: Music multiple     medium
#> 5  Entertainment: Video Games multiple       hard
#> 6                     History multiple     medium
#> 7  Entertainment: Video Games multiple       easy
#> 8        Science: Mathematics  boolean       easy
#> 9       Entertainment: Comics multiple     medium
#> 10 Entertainment: Video Games multiple     medium
#>                                                                                                                               question
#> 1                                                                   According to the BBPA, what is the most common pub name in the UK?
#> 2                             In the original &quot;Super Mario Bros.&quot;, what is the acceleration of Mario if he was in free fall?
#> 3                                                                      When BMW was established in 1916, it was producing automobiles.
#> 4  What was the title of Sakamoto Kyu&#039;s song &quot;Ue o Muite Arukou&quot; (I Look Up As I Walk) changed to in the United States?
#> 5                                                                 In TF2 Lore, what are the names of the Heavy&#039;s younger sisters?
#> 6                                                            Which of the following snipers has the highest amount of confirmed kills?
#> 7                                                                                                     When was Left 4 Dead 2 released?
#> 8                                                                    An equilateral triangle always has every angle measuring 60&deg;.
#> 9                                                                What is the real name of the &quot;Master Of Magnetism&quot; Magneto?
#> 10                                                                            What is the AK-47&#039;s name in Counter Strike: Source?
#>                                                           possible_answers
#> 1                        Red Lion; Royal Oak; White Hart; King&#039;s Head
#> 2                         91.28 m/s^2; 110  m/s^2; 9.42  m/s^2; 4.4  m/s^2
#> 3                                                               True/False
#> 4                                          Sukiyaki; Takoyaki; Sushi; Oden
#> 5  Yana and Bronislava; Gaba and Anna; Yanna and Gaba; Anna and Bronislava
#> 6         Simo H&auml;yh&auml;; Chris Kyle; Vasily Zaytsev; Craig Harrison
#> 7         November 17, 2009; May 3, 2008; November 30, 2009; June 30, 2010
#> 8                                                               True/False
#> 9          Max Eisenhardt; Charles Xavier; Pietro Maximoff; Johann Schmidt
#> 10                                                 CV-47; AK-74; AK; CZ-75
#>          correct_answer
#> 1              Red Lion
#> 2           91.28 m/s^2
#> 3                 False
#> 4              Sukiyaki
#> 5   Yana and Bronislava
#> 6  Simo H&auml;yh&auml;
#> 7     November 17, 2009
#> 8                  True
#> 9        Max Eisenhardt
#> 10                CV-47
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
#> 1                                                                        How many soccer players should be on the field at the same time?
#> 2                                                                Which driver has been the Formula 1 world champion for a record 7 times?
#> 3                                                           What was the final score of the Germany vs. Brazil 2014 FIFA World Cup match?
#> 4                                                           Which city did the former NHL team &quot;The Nordiques&quot; originiate from?
#> 5  This Canadian television sportscaster is known for his &quot;Hockey Night in Canada&quot; role, a commentary show during hockey games.
#> 6                                                                              What is the name of Manchester United&#039;s home stadium?
#> 7                                                    Who won the premier league title in the 2015-2016 season following a fairy tale run?
#> 8                                                                            The Los Angeles Dodgers were originally from what U.S. city?
#> 9                                                                          Who won the 2017 Formula One World Drivers&#039; Championship?
#> 10                                                                                             Which two teams played in Super Bowl XLII?
#>                                                                                                                                                                                                  possible_answers
#> 1                                                                                                                                                                                                  22; 20; 24; 26
#> 2                                                                                                                                                    Michael Schumacher; Ayrton Senna; Fernando Alonso; Jim Clark
#> 3                                                                                                                                                                                     7 - 1; 0 - 1; 3 - 4; 16 - 0
#> 4                                                                                                                                                                        Quebec City; Houston; Montreal; New York
#> 5                                                                                                                                                        Don Cherry; Don McKellar; Don Taylor ; Donald Sutherland
#> 6                                                                                                                                                Old Trafford; Anfield; City of Manchester Stadium; St James Park
#> 7                                                                                                                                                          Leicester City; Tottenham Hotspur; Watford; Stoke City
#> 8                                                                                                                                                                            Brooklyn; Las Vegas; Boston; Seattle
#> 9                                                                                                                                                  Lewis Hamilton; Sebastian Vettel; Nico Rosberg; Max Verstappen
#> 10 The New York Giants &amp; The New England Patriots; The Green Bay Packers &amp; The Pittsburgh Steelers; The Philadelphia Eagles &amp; The New England Patriots; The Seattle Seahawks &amp; The Denver Broncos
#>                                        correct_answer
#> 1                                                  22
#> 2                                  Michael Schumacher
#> 3                                               7 - 1
#> 4                                         Quebec City
#> 5                                          Don Cherry
#> 6                                        Old Trafford
#> 7                                      Leicester City
#> 8                                            Brooklyn
#> 9                                      Lewis Hamilton
#> 10 The New York Giants &amp; The New England Patriots
```

To view all available categories, `opentriviadb` provides a helper
function `get_categories`, which provides a dataframe of all available
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
