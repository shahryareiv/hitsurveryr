# # Just uncomment for short run

# library(devtools)

## if you need the list of files
# cat(sapply(list.files('R'), function(x){paste('* ',x,'\n',sep = '')}))


##make the answers first then the questionnaires ----
#source('answers_create.R')
#source('q_skl.R')

## store data ----
#devtools::use_data(answers, overwrite = TRUE)
#devtools::use_data(skl, overwrite = TRUE)


## package build ----
# devtools::use_vignette("singleverbr-vignette")
# devtools::load_all()
# devtools::use_testthat()
#
# devtools::build()
# devtools::document()
# devtools::build_vignettes()
# devtools::test()
# devtools::install()
# devtools::load_all()

