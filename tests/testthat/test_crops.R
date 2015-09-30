context("Crops")

tbl_new <- new_crop_table()
tbl_get <- get_crop_table()

test_that("Dummy table is created.", {
  expect_true(is.data.frame(tbl_new), TRUE)
  expect_true(is.data.frame(tbl_get), TRUE)
})
