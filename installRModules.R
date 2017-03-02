#install bioconductor
source("http://bioconductor.org/biocLite.R")
biocLite()

#install GATK & ExomeDepth packages
biocLite(c("Biostrings","Rsamtools","GenomicRanges"))
install.packages(c("ggplot2","reshape","gplots","gsalib","ExomeDepth"), repos="http://www.stats.bris.ac.uk/R/")
