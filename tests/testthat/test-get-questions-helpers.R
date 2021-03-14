test_that("Category string generates correctly", {
  expect_equal(make_category_string(), "")
  expect_equal(make_category_string("General Knowledge"), "&category=9")
  expect_equal(make_category_string("Sports"), "&category=21")
  expect_equal(make_category_string("Animals"), "&category=27")
})

test_that("Difficulty string generates correctly", {
  expect_equal(make_difficulty_string("any"), "")
  expect_equal(make_difficulty_string("easy"), "&difficulty=easy")
  expect_equal(make_difficulty_string("medium"), "&difficulty=medium")
  expect_equal(make_difficulty_string("hard"), "&difficulty=hard")
  expect_error(make_difficulty_string(), 'argument "difficulty" is missing')
})
