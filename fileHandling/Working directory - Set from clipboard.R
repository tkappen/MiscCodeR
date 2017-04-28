################################################
# Set Working Directory from clipboard (Windows)
################################################

wd <- normalizePath(readClipboard(), "/", mustWork = FALSE) 	# Works with execute line, not execute selection
setwd(wd)
getwd()
