library(ape)
oldData <- read.dna("flu_ha/flu_HA.fasta", format = "fasta")

#####
# oldNames <- rownames(oldData)
# Split <- strsplit(oldNames, "_")
# Dates <- unlist(lapply(Split, function(x) x[length(x)]))
# Stuff <- lapply(Split, function(x) x[-length(x)])
# # step 0: change dashes to forward slashes
# Stuff0 <- lapply(Stuff, function(x) gsub("-", "/", x))
# # step 1: replace the underlines with forward slashes
# Stuff1 <- lapply(Stuff0, function(x) paste(x, collapse = "/"))
# linStuff <- unlist(Stuff1)
# NewNames <- paste("seq", 1:length(Dates), Dates, linStuff, sep = "_")
# head(cbind(rownames(oldData), NewNames))
# newData <- oldData
# rownames(newData) <- NewNames
# write.dna(newData, file = "rsv/RSV_Gprotein_renamed.fasta", format = "fasta")

## Below is code to rename the flu, dengue and hiv data
completeYear <- function(stringYear){
  paste(stringYear, "-07-15", sep = "")
}
Split <- strsplit(rownames(oldData), "_")
NewSplit <- Split
for(i in 1:length(NewSplit)){ ## no, I WON'T use lapply ;P
  NewSplit[[i]][3] <- completeYear(NewSplit[[i]][3])
}
NewNames <- lapply(NewSplit, function(x) paste(x, collapse = "_"))
head(cbind(rownames(oldData), NewNames))
newData <- oldData
rownames(newData) <- NewNames
write.dna(newData, file = "flu_ha/flu_HA_renamed.fasta", format = "fasta")