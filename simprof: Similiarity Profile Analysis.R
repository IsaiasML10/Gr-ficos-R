install.packages("devtools", dependencies = TRUE)
library(devtools)
install_github("cran/clustsig") 
library(clustsig)
Kp_AMR_VF_150922 <- read.csv("~/Desktop/R/pca_v3_corte_10Q.csv", row.names=1)

Kpsimprof <- simprof(Kp_AMR_VF_150922, num.expected=1000, num.simulated=999,
                     method.cluster="average", method.distance="euclidean",
                     method.transform="identity", alpha=0.05,
                     sample.orientation="row", const=0,
                     silent=TRUE, increment=100,
                     undef.zero=TRUE, warn.braycurtis=TRUE)

simprof.plot(Kpsimprof, leafcolors=NA, plot=TRUE, fill=TRUE,
             leaflab="none", siglinetype=1) 


