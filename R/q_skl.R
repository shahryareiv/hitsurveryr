require(dplyr)
require(tibble)


#' Create skl data fram
#'
#' @return
#' @export
#'
#' @examples
skl_create <- function (){

  skl <- tibble::data_frame(
    name.id = character(),
    question.topic = character(),
    question.short = character(),
    question = character(),
    dependings = character(),
    choices = list(),
    vector = integer(),
    dimension = character(),
    translations = list()
  )

  #Did you feel that you were treated with respect and in a sensible manner at Wound Center?
  skl <-skl %>% dplyr::add_row(
    name.id = 'respect',
    question.topic ='respect',
    question.short ='respect',
    question = 'Did you feel that you were treated with respect and in a sensible manner at Wound Center?',
    choices = with(answers, choices[name.id == 'yes.partially.no']),
    vector = with(answers, vector[name.id == 'yes.partially.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.partially.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Kände du att du blev bemött med respekt och på ett hänsynsfullt sätt på Sårcentrum?'
    ))
  )




  #Did you feel involved in decisions about your care and treatment, as much as you wanted?
  skl <-skl %>% dplyr::add_row(
    name.id = 'involved',
    question.topic ='participation',
    question.short ='involved',
    question = 'Did you feel involved in decisions about your care and treatment, as much as you wanted?',
    choices = with(answers, choices[name.id == 'yes.partially.no']),
    vector = with(answers, vector[name.id == 'yes.partially.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.partially.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Kände du dig delaktig i beslut om din vård och behandling, så mycket som du önskade?'
    ))
  )


  #Did you have a time for the doctor as soon as you wanted?

  skl <-skl %>% dplyr::add_row(
    name.id = 'prompt.visit',
    question.topic ='availability',
    question.short ='prompt visit time',
    question = 'Did you have a time for the doctor as soon as you wanted?',
    choices = with(answers, choices[name.id == 'yes.no.no_request']),
    vector = with(answers, vector[name.id == 'yes.no.no_request']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.no.no_request']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Fick du en tid för läkarmötet så snart du önskade?'
    ))
  )


  #Did you get enough information about your wound / diagnosis?
  skl <-skl %>% dplyr::add_row(
    name.id = 'informed',
    question.topic ='knowledge',
    question.short ='get informed',
    question = 'Did you get enough information about your wound / diagnosis?',
    choices = with(answers, choices[name.id == 'yes.partially.no']),
    vector = with(answers, vector[name.id == 'yes.partially.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.partially.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Fick du tillräcklig information om ditt sår/diagnos?'
    ))
  )


  #Did you feel confident about the attending physician?
  skl <-skl %>% dplyr::add_row(
    name.id = 'confidence.physician',
    question.topic ='confidence',
    question.short ='confidence in physician',
    question = 'Did you feel confident about the attending physician?',
    choices = with(answers, choices[name.id == 'yes.partially.no']),
    vector = with(answers, vector[name.id == 'yes.partially.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.partially.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Kände du förtroende för den behandlande läkaren?'
    ))
  )



  #Do you think your current healthcare needs have been met at the clinic via the tabletop?
  skl <-skl %>% dplyr::add_row(
    name.id = 'needs.clinic',
    question.topic ='effectiveness',
    question.short ='needs fullfilment',
    question = 'Do you think your current healthcare needs have been met at the clinic via the tabletop?',
    choices = with(answers, choices[name.id == 'yes.partially.no']),
    vector = with(answers, vector[name.id == 'yes.partially.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.partially.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Anser du att ditt aktuella behov av sjukvård blivit tillgodosett vid läkarmötet via surfplattan?'
    ))
  )



  #Did you get enough pain relief for your wound when surfing the tablet?
  skl <-skl %>% dplyr::add_row(
    name.id = 'needs.drug',
    question.topic ='effectiveness',
    question.short ='enough pain relief',
    question = 'Did you get enough pain relief for your wound when surfing the tablet?',
    choices = with(answers, choices[name.id == 'yes.partially.no']),
    vector = with(answers, vector[name.id == 'yes.partially.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.partially.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Fick du tillräcklig smärtlindring för ditt sår vid uppföljningen via surfplattan?'
    ))
  )



  #How do you fully appreciate the care / treatment you received at the clinic via the tabletop?
  skl <-skl %>% dplyr::add_row(
    name.id = 'satisfaction',
    question.topic ='satisfaction',
    question.short ='satisfaction',
    question = 'How do you  appreciate the care / treatment you received at the clinic via the tabletop?',
    choices = with(answers, choices[name.id == 'excelent.to.bad.5']),
    vector = with(answers, vector[name.id == 'excelent.to.bad.5']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'excelent.to.bad.5']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Hur värderar du som helhet den vård/behandling som du fick vid läkarmötet via surfplattan?'
    ))
  )







  #Did you feel that the meeting via the tabletop felt safe and secure?
  skl <-skl %>% dplyr::add_row(
    name.id = 'safety.feeling',
    question.topic ='safety',
    question.short ='feeling safe',
    question = 'Did you feel that the meeting via the tabletop felt safe and secure?',
    choices = with(answers, choices[name.id == 'yes.partially.no']),
    vector = with(answers, vector[name.id == 'yes.partially.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.partially.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Upplevde du att mötet via surfplattan kändes tryggt och säkert?'
    ))
  )






  #Would you like to use tablet as an aid in your healthcare contact?
  skl <-skl %>% dplyr::add_row(
    name.id = 'use.intent',
    question.topic ='use',
    question.short ='intent to use',
    question = 'Would you like to use tablet as an aid in your healthcare contact?',
    choices = with(answers, choices[name.id == 'yes.no']),
    vector = with(answers, vector[name.id == 'yes.no']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'yes.no']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Kan du tänka dig att använda surfplatta som ett hjälpmedel i din kontakt med sjukvården igen?'
    ))
  )



  #How long do you need to take you back and forth from your home to Wound Center?
  skl <-skl %>% dplyr::add_row(
    name.id = 'time.length',
    question.topic ='distance.time',
    question.short ='length of travel',
    question = 'How long do you need to go back and forth from your home to Wound Center?',
    choices = with(answers, choices[name.id == 'time.length.quarters.4']),
    vector = with(answers, vector[name.id == 'time.length.quarters.4']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'time.length.quarters.4']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Hur lång tid behöver du för att ta dig till fram och tillbaka från din bostad till Sårcentrum?'
    ))
  )


  #How far is for you to go back and forth from your home to Wound Center?
  skl <-skl %>% dplyr::add_row(
    name.id = 'distance.length',
    question.topic ='distance.time',
    question.short ='distance of travel',
    question = 'How far is for you to go back and forth from your home to Wound Center?',
    choices = with(answers, choices[name.id == 'distance.15k.4']),
    vector = with(answers, vector[name.id == 'distance.15k.4']),
    dependings = "",
    dimension = with(answers, dimension[name.id == 'distance.15k.4']),
    translations = list(tribble(
      ~language, ~translation,
      'Swedish', 'Hur lång sträcka är det fram och tillbaka från din bostad till Sårcentrum?'
    ))
  )

  return(skl)
}
