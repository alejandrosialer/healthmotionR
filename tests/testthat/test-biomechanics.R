test_that("acceleration magnitude uses the Euclidean norm", {
  expect_equal(acceleration_magnitude(3, 4, 0), 5)
  expect_equal(
    acceleration_magnitude(c(1, 0), c(0, 1), c(0, 0)),
    c(1, 1)
  )
  expect_error(acceleration_magnitude(1:2, 1, 1:2), "equal lengths")
})

test_that("range of motion handles missing values explicitly", {
  expect_equal(range_of_motion(c(-10, 5, 25)), 35)
  expect_equal(range_of_motion(c(1, NA, 4)), 3)
  expect_true(is.na(range_of_motion(c(1, NA, 4), na.rm = FALSE)))
  expect_true(is.na(range_of_motion(c(NA_real_, NA_real_))))
})

test_that("gait symmetry supports index and ratio definitions", {
  expect_equal(gait_symmetry(c(1, 1.1), c(1, 1)), c(0, 200 * 0.1 / 2.1))
  expect_equal(gait_symmetry(1.1, 1, method = "ratio"), 1.1)
  expect_true(is.na(gait_symmetry(1, -1)))
  expect_true(is.na(gait_symmetry(1, 0, method = "ratio")))
  expect_error(gait_symmetry(1:2, 1), "equal lengths")
})
