###############################################################################
#
# Mark Cembrowski, Janelia Research Campus, May 20 2015
#
# This script takes numbers from the NEURON environment, corresponding to the
# number of APs in different stochastic simulations, and plots a pie chart.
#
###############################################################################

piechartR <- function(){
	library(ggplot2)

	df <- data.frame(variable=c("apAll","apExcVgat","apExcOnly","apNone"),
				value=c(20,14,21,45))

	gg <- ggplot(df, aes(x = "", y = value, fill = variable)) 
	gg <- gg + geom_bar(width = 1, stat = "identity") 
  	gg <- gg + coord_polar("y", start = 0)
	gg <- gg + labs(title = "Distribution of AP responses")
	gg <- gg + theme_bw()
	print(gg)
}
