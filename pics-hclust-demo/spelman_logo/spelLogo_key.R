# source("http://bioconductor.org/biocLite.R"); 
# biocLite("Heatplus");

 library(Heatplus); #load Heatplus package into R
 library(adimpro)
 library(pixmap)

 logo = read.pnm("spelman.pbm")
 m = matrix(logo@grey, logo@size[1], logo@size[2])
 image(m, col=gray(0:10/10), main="original") #this is the original image
 
 
 m2 = m[sample(1:g@size[1], g@size[1]), ] 
 image(m2, col=gray(0:10/10), main="shuffled")  #this is the shuffled image
   
 h = hclust(dist(m2))
 m3 = m2[h$order, ]
 image(m3, col=gray(0:10/10), main="hclust result")
   
 mymethod = 'ward';
 heatmap_2(m, do.dendro = c(T, FALSE), legend = 1, 
  #legfrac = 10,
  hclustfun = function(c) hclust( c, method= mymethod),
  col = gray(0:10/10),
 )


 heatmap_2(m); #A simple heat map
 heatmap_2(m, legend = 1 ) #Add a figure legend
 heatmap_2(m, legend = 1, col = RGBColVec(64) ) #customerize the color

############
############ END
############

