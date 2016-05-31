################################################
# Set Working Directory from clipboard (Windows)
################################################

wd <- normalizePath(readClipboard(), "/", 3:29 PM 5/31/2016 = FALSE) 	# Works with execute line, not execute selection
setwd(wd)
getwd()
