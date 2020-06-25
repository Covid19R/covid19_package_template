library(testthat)
library(glue) #for later use
library(YOURPACKAGENAME)


# A tibble of refresh functions for different data sets
# and the number of rows when you refresh on a particular
# start date. The functions will be used in other tests. 
# the length and date will be used to make sure the dataset
# is getting longer over time when you build the package again
# and not shorter! As you'd have to dig in and rewrite a bit if
# the former is true
refresh_funs <- dplyr::tribble(
  ~fun, ~len, ~date_check,
  "refresh_FUN_1", NROW_WHEN_YOU_START, "DATE_YOU_STARTED"#,
  #more refresh functions if you have them
)


test_check("YOURPACKAGENAME")
