# install Bioconductor and check version
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("3.15")
BiocManager::version()

# install Bioconductor packages
BiocManager::install("BSgenome.Hsapiens.UCSC.hg19")
BiocManager::install(c("genefilter","geneplotter"))

# load installed packages
library(BSgenome.Hsapiens.UCSC.hg19)
library(genefilter)
library(geneplotter)
BiocManager::version()

BiocManager::install(c("genefu",
                       "COPDSexualDimorphism",
                       "gwascat",
                       "hgu133a.db",
                       "genomicsclass/tissuesGeneExpression"))

library(COPDSexualDimorphism.data)
BiocManager::install(c("COPDSexualDimorphism.data")
BiocManager::install(c("Homo.sapiens",
                       "GenomicFeatures",
                       "genomicsclass/ERBS",
                       "genomicsclass/ph525x"))
BiocManager::install("genomicsclass/ERBS")
library(ERBS)
library(devtools)
install.packages("unethis")

data(GM12878)
data(HepG2)
library(IRanges)
library(GenomicRanges)

BiocManager::install("AnnotationDbi")
library(GenomicFeatures) 
library(Homo.sapiens)

# precede for finding nearby genes
library(Biostrings)

# Management of genome-scale data

BiocManager::install(c("Biobase",
                       "GEOquery",
                       "genomicsclass/GSE5859Subset",
                       "affy",
                       "hgu95acdf",
                       "genefilter",
                       "parathyroidSE",
                       "airway",
                       "pasillaBamSubset",
                       "Rsamtools",
                       "GenomicAlignments",
                       "ArrayExpress",
                       "NGScopyData",
                       "AnnotationDbi"))


install_github("genomicsclass/ERBS")
browseVignettes("GenomicRanges")
library(Biostrings)

# basics of DNAStrings
dna <- DNAString("TCGAGCAAT")    # define a DNAString
dna
length(dna)    # number of bases in a DNAString
DNAString("JQX")    # error - invalid bases
DNAString("NNNACGCGC-TTA-CGGGCTANN")    # valid sequence with unknowns and gaps
dna[4:6]    # extract a substring
as.character(dna)    # convert DNAString to character

set1 <- DNAStringSet(c("TCA", "AAATCG", "ACGTGCCTA", "CGCGCA", "GTT", "TCA"))    # define a DNAStringSet
set1
set1[2:3]    # extract subset of sequences
set1[[4]]    # extract one sequence as a single DNAString
length(set1)    # number of DNAstrings in set
width(set1)    # size of each DNAString
duplicated(set1)    # detect which sequences are duplicated
unique(set1)    # keep only unique sequences
sort(set1)

dna_seq <- DNAString("ATCGCGCGCGGCTCTTTTAAAAAAACGCTACTACCATGTGTGTCTATC")

# analyze DNAStrings
letterFrequency(dna_seq, "A")    # count A in sequence
letterFrequency(dna_seq, "GC")    # count G or C in sequence
dinucleotideFrequency(dna_seq)    # frequencies of all dinucleotides
trinucleotideFrequency(dna_seq)    # frequencies of all trinucleotides

# convert DNAStrings
reverseComplement(dna_seq)    # find reverse complement
translate(dna_seq)    # amino acid translation


# count and match on individual Biostrings
dna_seq <- DNAString("ATCGCGCGCGGCTCTTTTAAAAAAACGCTACTACCATGTGTGTCTATC")
dna_seq
countPattern("CG", dna_seq)    # pattern "CG" occurs 5 times
matchPattern("CG", dna_seq)    # locations of pattern "CG"
start(matchPattern("CG", dna_seq))    # start locations of the pattern
matchPattern("CTCTTTTAAAAAAACGCTACTACCATGTGT", dna_seq)    # match patterns of any length

# check for pattern and its reverse complement
countPattern("TAG", dna_seq)
countPattern(reverseComplement(DNAString("TAG")), dna_seq)

# count and match on sets of Biostrings
set2 <- DNAStringSet(c("AACCGGTTTCGA", "CATGCTGCTACA", "CGATCGCGCCGG", "TACAACCGTACA"))
set2
vcountPattern("CG", set2)    # CG counts for entire DNAStringSet
vmatchPattern("CG", set2)
vmatchPattern("CG", set2)[[1]]    # access matches for the first element of the DNAStringSet




