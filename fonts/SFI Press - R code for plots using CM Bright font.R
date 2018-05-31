######################################################################
######################################################################
# How to create SFI Press figures with the CM Bright/CMU Bright font.
######################################################################
######################################################################

# Download the extrafont library (skip this step if already downloaded)
install.packages("extrafont")

######################################################################

# Load the extrafont library.
library(extrafont)

# Give R access to the fonts on this computer.
loadfonts()

# fonts() lists all the fonts loaded by loadfonts(). 
# If 'CMU Bright' is downloaded and ready to use, it should appear in 
# this list.
fonts() 

######################################################################

# Tell R to write all plotting commands to a pdf document in the 
# working directory. Modify file name, width and height.
# Content should fit inside a 9.4 cm width X 18.6 cm height 
# (3.7 inch width X 7.3 inch height) box.
pdf("Figure name.pdf", family="CMU Bright", width=3.7, height=6.5) 

# Various plotting commands
plot(...)

# Close the pdf output file
dev.off()

######################################################################
######################################################################

