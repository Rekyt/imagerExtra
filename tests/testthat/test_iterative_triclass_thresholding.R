library(imagerExtra)

test_that("Iterative Triclass Thresholding",
{
  notim <- 1
  im <- boats
  gim <- grayscale(im)
  gim2 <- imrep(gim, 2) %>% imappend(., "z")
  bad1 <- "A"
  bad2 <- -1
  bad3 <- c(1,1,1)
  expect_equal(ThresholdTriclass(notim), NULL)
  expect_warning(ThresholdTriclass(notim))
  expect_equal(ThresholdTriclass(im), NULL)
  expect_warning(ThresholdTriclass(im))
  expect_equal(ThresholdTriclass(gim2), NULL)
  expect_warning(ThresholdTriclass(gim2))
  expect_equal(ThresholdTriclass(gim, bad1), NULL)
  expect_warning(ThresholdTriclass(gim, bad1))
  expect_equal(ThresholdTriclass(gim, bad2), NULL)
  expect_warning(ThresholdTriclass(gim, bad2))
  expect_equal(ThresholdTriclass(gim, bad3), NULL)
  expect_warning(ThresholdTriclass(gim, bad3))
  expect_equal(ThresholdTriclass(gim, stopval = bad1), NULL)
  expect_warning(ThresholdTriclass(gim, stopval = bad1))
  expect_equal(ThresholdTriclass(gim, stopval = bad2), NULL)
  expect_warning(ThresholdTriclass(gim, stopval = bad2))
  expect_equal(ThresholdTriclass(gim, stopval = bad3), NULL)
  expect_warning(ThresholdTriclass(gim, stopval = bad3))
  expect_equal(ThresholdTriclass(gim, repeatnum = bad1), NULL)
  expect_warning(ThresholdTriclass(gim, repeatnum = bad1))
  expect_equal(ThresholdTriclass(gim, repeatnum = bad2), NULL)
  expect_warning(ThresholdTriclass(gim, repeatnum = bad2))
  expect_equal(ThresholdTriclass(gim, repeatnum = bad3), NULL)
  expect_warning(ThresholdTriclass(gim, repeatnum = bad3))
  expect_equal(ThresholdTriclass(gim, returnvalue = bad1), NULL)
  expect_warning(ThresholdTriclass(gim, returnvalue = bad1))
  expect_equal(ThresholdTriclass(gim, returnvalue = bad2), NULL)
  expect_warning(ThresholdTriclass(gim, returnvalue = bad2))
  expect_equal(ThresholdTriclass(gim, returnvalue = bad3), NULL)
  expect_warning(ThresholdTriclass(gim, returnvalue = bad3))
}