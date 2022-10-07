.onLoad <- function(libname, pkgname) {

  quiet <- function(x) {
    sink(tempfile())
    on.exit(sink())
    invisible(force(x))
  }

  hansardr_path <- paste0(.libPaths(), "/hansardr/")[1]
  if(file.exists(paste0(hansardr_path, "data/"))) { invisible()
    } else {
      url <- "https://smu.box.com/shared/static/34sxstotmquq2ud81r449nomlm0fcplp"
      fname <- paste0(hansardr_path, "data.zip")
      packageStartupMessage("Downloading the c19 Hansard Corpus.")

      tryCatch({
        utils::download.file(url, fname, mode = "wb")

        zip_file <- paste0(hansardr_path, "data.zip")
        utils::unzip(zip_file, exdir = paste0(hansardr_path, "uncompressed_data"))

        from <- paste0(hansardr_path, "uncompressed_data/data/")
        to <- paste0(hansardr_path, "data/")

        quiet(ff::file.move(from, to))
        quiet(file.remove(paste0(hansardr_path, "data.zip")))
        quiet(file.remove(paste0(hansardr_path, "uncompressed_data"))) },

        warning = function(cond) {
          packageStartupMessage("The c19 Hansard data cannot be downloaded. Please open a GitHub Issue if this problem persists.")
          packageStartupMessage("https://github.com/stephbuon/hansardr/issues") } )

      }

  }
