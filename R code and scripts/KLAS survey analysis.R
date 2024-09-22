# This file is available at https://github.com/ebmgt/EHR-Management/
# Author: rbadgett@kumc.edu
# Permission: GNU GPLv3 https://choosealicense.com/licenses/gpl-3.0/
# Last edited 2024-09-21

library(tcltk) # For interactions and troubleshooting, Oart of base so no install needed.

# Global variables -----
Pb <- NULL  # For function_progress
Pallette_RoyGBiv <- c('red','orange','yellow', 'green', 'blue', '#4B0082', 'violet')
Palette_KU <- c("KUBlue" = "#0022B4", "KUSkyBlue" = "#6DC6E7", "KUCrimson" = "#e8000d", "KUYellow" = "#ffc82d")
# Access: Palette_KU["KU Blue"]

# Set working directory -----
if (Sys.getenv("RSTUDIO") != "1"){
  args <- commandArgs(trailingOnly = FALSE)
  script_path <- sub("--file=", "", args[grep("--file=", args)])  
  script_path <- dirname(script_path)
  setwd(script_path)
}else{
  setwd(dirname(rstudioapi::getSourceEditorContext()$path))
}

### Start =======================================
print(version)
print(citation(package = "base", lib.loc = NULL, auto = NULL))

# Did the script load? -----
tk_messageBox(type = "ok", paste('1. ', 'R has loaded.\n\nWorking directory:\n', getwd(), sepo=''), caption = "Hello")
