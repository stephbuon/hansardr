#' The 19th-century British Parliamentary debates for the decade 1820
#'
#' Hansard corpus data for the decade 1820. To also access information about speaker and debate title, join this data frame with debate_metadata on
#' sentence_id. The variables are as follows:
#'
#' @docType data
#'
#' @usage hansard_1820
#'
#' @format A data frame with 342269 rows and 6 variables:
#'
#' sentence_id
#' A unique ID assigned to each sentence of the Hansard corpus.
#'
#' speechdate
#' The date a sentence was spoken.
#'
#' text
#' A sentence spoken by a member of parliament.
#'
#' @keywords datasets
#'
#' @examples
#' data(hansard_1820)
#'
#' @references Moore et al. (2013) Genetics 195:1077-1086
#' (\href{https://www.ncbi.nlm.nih.gov/pubmed/23979570}{PubMed})
#'
#' @source \href{https://phenome.jax.org/projects/Moore1b}{QTL Archive}
#'
"hansard_1820"
