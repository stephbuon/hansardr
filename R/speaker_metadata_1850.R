#' The 19th-century British Parliamentary debates speaker metadata for the decade 1850
#'
#' The Hansard corpus debate metadata retains information about speakers.
#' The variables are as follows:
#'
#' @docType data
#'
#' @usage speaker_metadata_1850
#'
#' @format A data frame with 985755 rows and 6 variables:
#'
#' sentence_id
#' A unique ID assigned to each sentence of the corpus, taken from the digitized parliamentary debates.
#'
#' speaker
#' The name of the speaker originally recorded in the transciptions of the debates.
#'
#' suggested_speaker
#' The suggested true identity of the speaker after undergoing disambiguation.
#'
#' ambiguous
#' Binary. Speaker is assigned the value of "1" if our algorithm marked them as ambiguous (e.g. multiple speakers were matched during the disambiguation process).
#'
#' fuzzy_matched
#' Binary. Speaker is assigned the value of "1" if our algorithm fuzzy matched the names of the speakers.
#'
#' ignored
#' Binary. The speaker is ignored by our disambiguation process if they are not a Member of Parliament (MP). Ignored speakers are assigned the value of "1."
#'
#' @keywords datasets
#'
#' @examples
#' data(speaker_metadata_1850)
#'
#' @references Buongiorno, Steph; Kalescky, Robert; Godat, Eric; Cerpa, Omar Alexander; Guldi, Jo (2021) 
#' (\\href{https://doi.org/10.7910/DVN/ZCYJH8})
#'
#' @source \\href{https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/ZCYJH8}{Harvard Dataverse}
#'
"speaker_metadata_1850"


