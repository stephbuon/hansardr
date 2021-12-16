#' The 19th-century British Parliamentary debates metadata for the decade 1870
#'
#' The Hansard corpus debate metadata retains information about the debates such as the debate name and the speaker.
#' The variables are as follows:
#'
#' @docType data
#'
#' @usage debate_metadata_1870
#'
#' @format A data frame with 1130420 rows and 5 variables:
#'
#' sentence_id
#' A unique ID assigned to each sentence of the corpus, taken from the digitized parliamentary debates.
#'
#' speechdate
#' The date on which the sentence was spoken in year, month, day format.
#'
#' debate
#' The title of the debate.
#'
#' speaker
#' The recorded name of the person who spoke the sentence.
#'
#' disambig_speaker
#' The disambiguated name of the person who spoke the sentence.
#'
#' @keywords datasets
#'
#' @examples
#' data(debate_metadata_1870)
#'
#' @references Buongiorno, Steph; Kalescky, Robert; Godat, Eric; Cerpa, Omar Alexander; Guldi, Jo (2021) 
#' (\href{https://doi.org/10.7910/DVN/ZCYJH8})
#'
#' @source \href{https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ZCYJH8}{Harvard Dataverse}
#'
"debate_metadata_1870"
