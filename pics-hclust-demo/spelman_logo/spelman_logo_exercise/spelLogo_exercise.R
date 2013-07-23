
# source("http://bioconductor.org/biocLite.R"); 
# biocLite("Heatplus");

 library(Heatplus); #load Heatplus package into R
 library(adimpro)
 library(pixmap)

 logo = read.pnm("spelman.pbm")
 m = matrix(logo@grey, logo@size[1], logo@size[2])
 image(m, col=gray(0:10/10), main="original") #this is the original image
 
 
 m2 = m[sample(1:logo@size[1], logo@size[1]), ] 
 image(m2, col=gray(0:10/10), main="shuffled")  #this is the shuffled image
   
 # Now, use hclust to reconstruct the Spelman Logo
 
 
############
############ END
############

