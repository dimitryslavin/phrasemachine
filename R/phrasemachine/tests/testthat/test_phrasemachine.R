context("Main Function")
test_that("extract right spans", {

    test_result <- phrasemachine("Hello there my red good cat.",
                                 minimum_ngram_length = 1,
                                 maximum_ngram_length = 8,
                                 return_tag_sequences = TRUE)

    expect_equal(test_result[[1]]$phrases[1], "red_good_cat")
    expect_equal(test_result[[1]]$phrases[2], "good_cat")
    expect_equal(test_result[[1]]$phrases[3], "cat")
})



