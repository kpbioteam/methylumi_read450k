require('methylumi')
require('TCGAMethylation450k')
require('FDb.InfiniumMethylation.hg19')

args <- commandArgs(trailingOnly = TRUE)

input = args[1]
output = args[2]

mset450k <- methylumIDAT(getBarcodes(path=input), idatPath=input)

save(mset450k, file = output)

