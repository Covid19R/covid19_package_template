refresh_col_names <-
  c("date",
    "location",
    "location_type",
    "location_standardized",
    "location_standardized_type",
    "data_type",
    "value"
  )

test_that("location works", {

  res <- refresh_YOURPACKAGENAME()

  expect_named(res, refresh_col_names)

  expect_true(
    "New York" %in% unique(res$location)
  )
})
