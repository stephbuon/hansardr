#' File metadata for the decade 1820
#'
#' The Hansard corpus file metadata retains source information from the digitized debates hosted by UK Parliament.
#' It also includes indexing information added by the author. This data set can be used for locating data within
#' original debates, or for citing the debates. The variables are as follows:
#'
#' @docType data
#'
#' @usage file_metadata_1820
#'
#' @format A data frame with 342269 rows and 5 variables:
#'
#' sentence_id
#' A unique ID assigned to each sentence of the Hansard corpus.
#'
#' speech_id
#' A unqiue ID assigned to each consective sentence stated by a speaker during a debate.
#'
#' debate_id
#' A unique ID assigned to each debate of the hansard corpus.
#'
#' src_file_id
#' An ID assigned to the digitized file from which the present dataset was scraped, taken from the digitized parliamentary debates.
#'
#' src_image
#' An ID assigned to the image of the digitized file, taken from the digitized parliamentary debates.
#'
#' src_column
#' The column of the sentence, taken from the digitized parliamentary debates.
#'
#' @keywords datasets
#'
#' @examples
#' data(file_metadata_1820)
#'
#' @references Moore et al. (2013) Genetics 195:1077-1086
#' (\href{https://www.ncbi.nlm.nih.gov/pubmed/23979570}{PubMed})
#'
#' @source \href{https://phenome.jax.org/projects/Moore1b}{QTL Archive}
#'
"file_metadata_1820"