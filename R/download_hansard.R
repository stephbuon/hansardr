#' @noRd
quiet <- function(x) {
  sink(tempfile())
  on.exit(sink())
  invisible(force(x)) }

#' @importFrom utils download.file
#' @importFrom utils unzip
#' @importFrom ff file.move
#' @export
download_hansard <- function() {
  
  print("This replaces the sample data with the full c19 Hansard corpus. Do you wish to continue?")
  print("Press 1 to download.")
  print("Press 2 to pass.")
  
  input <- readline(prompt="Select Option: ")
  
  if(input == 1) { 
    hansardr_path <- paste0(.libPaths(), "/hansardr/")[1]
    
    url <- "https://smu.box.com/shared/static/34sxstotmquq2ud81r449nomlm0fcplp"
    fname <- paste0(hansardr_path, "hansardr_data.zip")
    
    if(file.exists(paste0(hansardr_path, "debate_metadata_1800.RData"))) { 
      if(file.info(paste0(hansardr_path, "debate_metadata_1800.RData"))$size > 900) {
        remove_samples(hansardr_path) } }
    
    tryCatch({
      download.file(url, fname, mode = "wb")
      
      zip_file <- paste0(hansardr_path, "hansardr_data.zip")
      unzip(zip_file, exdir = paste0(hansardr_path, "uncompressed_data"))
      
      from <- paste0(hansardr_path, "uncompressed_data/data/")
      to <- paste0(hansardr_path, "data/")
      
      quiet(file.move(from, to))
      quiet(file.remove(paste0(hansardr_path, "hansardr_data.zip")))
      quiet(file.remove(paste0(hansardr_path, "uncompressed_data"))) 
      
    },
    
    warning = function(cond) {
      print("The c19 Hansard data cannot be downloaded. Please open a GitHub Issue if this problem persists.")
      print("https://github.com/stephbuon/hansardr/issues") } ) }
    
    } else if (input == 2 ) { 
      invisible() } else {
        print("Not a valid option. Exiting.") }