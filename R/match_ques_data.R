#' Binds a qeustionnaire with a data.df
#'
#' @param data.df
#' @param questionnaire.name
#'
#' @return
#' @export
#'
#' @examples
match_ques_data <- function(data.df, questionnaire.name){

  if (questionnaire.name == 'skl'){
    colnames(data.df) <- healthsurveryr::skl[['name.id']]
  }else{
    stop('Could not find the specified questionnaire!')
  }

  return(data.df)

}
