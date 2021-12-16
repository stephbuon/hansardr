#' The 19th-century British Parliamentary debates metadata for the decade 1820
#'
#' The Hansard corpus debate metadata retains information about the debates such as the debate name and the speaker.
#' The variables are as follows:
#'
#' @docType data
#'
#' @usage debate_metadata_1820
#'
#' @format A data frame with 342269 rows and 4 variables:
#'
#' sentence_id
#' A unique ID assigned to each sentence of the corpus, taken from the digitized parliamentary debates.
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
#' data(debate_metadata_1820)
#'
#' @references Moore et al. (2013) Genetics 195:1077-1086
#' (\href{https://www.ncbi.nlm.nih.gov/pubmed/23979570}{PubMed})
#'
#' @source \href{https://phenome.jax.org/projects/Moore1b}{QTL Archive}
#'
"debate_metadata_1820"
