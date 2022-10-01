.onLoad <- function(libname, pkgname) {

  hansardr_path <- paste0(.libPaths(), "/hansardr/")[1]
  if(file.exists(paste0(hansardr_path, "data/"))) { invisible()
    } else {
      url <- "https://smu.box.com/shared/static/34sxstotmquq2ud81r449nomlm0fcplp"
      fname <- paste0(hansardr_path, "data.zip")
      download.file(url, fname, mode = "wb")

      zip_file <- paste0(hansardr_path, "data.zip")
      unzip(zip_file, exdir = paste0(hansardr_path, "data"))
      file.remove(zip_file, "data.zip") }
  }
