require(dplyr)
require(tibble)



#' Create answer strcuture
#'
#' @return
#' @export
#'
#' @examples
answers_create <- function()
{
  answers.dimensions <- c(
    attitude = 'attitude',
    time.length = 'time.length',
    datetime = 'datetime',
    distance = 'distance'
  )

  answers <- tibble::data_frame(
    name.id = character(),
    choices = list(),
    size = numeric(), #how many options
    vector = numeric(),# the sign shows if the values are ascending (+) or decending (-), the value shows how many have positive/negative meaning
    dimension = character(),
    choices.translations = list()
  )

  answers <- answers %>% dplyr::add_row(
    name.id = 'yes.no',
    choices =  list(c('Yes','No')),
    size = 2,
    vector = -2,
    dimension = answers.dimensions['attitude'],
    choices.translations = list(data_frame(
      language = 'Swedish',
      translation = list(c('Ja','Nej'))
    ))
  )
  answers <- answers %>% dplyr::add_row(
    name.id = 'yes.partially.no',
    choices = list(c('Yes, completely', 'Partially', 'No')),
    size = 3,
    vector =-3,
    dimension = answers.dimensions['attitude'],
    choices.translations = list(data_frame(
      language = 'Swedish',
      translation = list(c('Ja, helt och hållet','Delvis	','Nej'))
    ))
  )
  answers <- answers %>% dplyr::add_row(
    name.id = 'yes.no.no_request',
    choices = list(c('Yes', 'No', 'I had no special request')),
    size = 3,
    vector = -2,#-3?
    dimension = answers.dimensions['attitude'],
    choices.translations = list(data_frame(
      language = 'Swedish',
      translation = list(c('Ja','Helt och Hållet	Delvis','Nej'))
    ))
  )
  answers <- answers %>% dplyr::add_row(
    name.id = 'excelent.to.bad.5',
    choices = list(c('Excellent', 'Very Good', 'Good', 'So So', 'Bad')),
    size = 5,
    vector = -5,
    dimension = answers.dimensions['attitude'],
    choices.translations = list(data_frame(
      language = 'Swedish',
      translation = list(c('Utmärkt','Mycket bra','Bra','Någorlunda','Dålig'))
    ))
  )
  answers <- answers %>% dplyr::add_row(
    name.id = 'time.length.quarters.4',
    choices = list(c('0-15 min', '15-30 min', '30-60 min', '60 min or more')),
    size = 4,
    vector = 4,
    dimension = answers.dimensions['time.length'],
    choices.translations = list(data_frame(
      language = 'Swedish',
      translation = list(c('0-15 min','15-30 min','30-60 min','60 min eller mer'))
    ))
  )
  answers <- answers %>% dplyr::add_row(
    name.id = 'distance.15k.4',
    choices = list(c('0-5 km', '5-10 km', '10-20 km', '20 km eller längre')),
    size = 4,
    vector = 4,
    dimension = answers.dimensions['distance'],
    choices.translations = list(data_frame(
      language = 'Swedish',
      translation = list(c('0-5 km', '5-10 km', '10-20 km', '20 km eller längre'))
    ))
  )
}
