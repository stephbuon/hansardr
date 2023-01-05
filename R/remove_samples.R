#' @noRd
remove_samples <- function(hansardr_path) {
  file_names <- c("debate_metadata_1800", "debate_metadata_1810", "debate_metadata_1820", "debate_metadata_1830", "debate_metadata_1840", "debate_metadata_1850",
                  "debate_metadata_1860", "debate_metadata_1870", "debate_metadata_1880", "debate_metadata_1890", "debate_metadata_1900", 
                  
                  "speaker_metadata_1800","speaker_metadata_1810", "speaker_metadata_1820", "speaker_metadata_1830", "speaker_metadata_1840", "speaker_metadata_1850", 
                  "speaker_metadata_1860", "speaker_metadata_1870", "speaker_metadata_1880", "speaker_metadata_1890", "speaker_metadata_1900", 
                  
                  "file_metadata_1800", "file_metadata_1810", "file_metadata_1820", "file_metadata_1830", "file_metadata_1840", "file_metadata_1850", "file_metadata_1860", 
                  "file_metadata_1870", "file_metadata_1880", "file_metadata_1890", "file_metadata_1900", 
                  
                  "hansard_1800", "hansard_1810", "hansard_1820", "hansard_1830", "hansard_1840", "hansard_1850", "hansard_1860",
                  "hansard_1870", "hansard_1880", "hansard_1890", "hansard_1900")
  
  print("Replacing the sample data and downloading the full c19 Hansard corpus.")
  
  for(file in file_names) { 
    quiet(file.remove(paste0(hansardr_path, file, ".RData"))) } }