###############################################################################
#
# Mark Cembrowski, Janelia Research Campus, Jun 9 2015
#
# This script runs a KS test on the proximal vs. distal obliques observed in
# Erik's AT data, obtained from Erik on June 8 2015.
#
##############################################################################

proxDistKs <- function(){
	# Load data.
	theTab <- read.table('proxVsDist.txt',header=T,fill=F,sep='\t')

	# Parse into two datasets.
	prox <- theTab[,1]
	dist <- theTab[,2]

	# Do KS test.
	ksOut <- ks.test(prox,dist)

	print(ksOut)
}
