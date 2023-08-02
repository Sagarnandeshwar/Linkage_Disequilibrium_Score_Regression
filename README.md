# Linkage Disequilibrium Score Regression
Implement a simple  LD score regression algorithm with Python to estimate the heritability of the phenotype.

## Heritability
![Heritability](https://github.com/Sagarnandeshwar/Linkage_Disequilibrium_Score_Regression/blob/main/image/heritability.png)

## LD score regression
LD score regression is a statistical method used to estimate heritability and genetic correlation between complex traits or diseases using genome-wide association study (GWAS) summary statistics. LD stands for linkage disequilibrium, which is a measure of the non-random association of alleles at different loci in a population. 

The basic idea behind LD score regression is to compare the observed GWAS association statistics with what would be expected under a null model of no association to infer heritability. It assumes that the genetic architecture of complex traits can be described by a polygenic model, where thousands of genetic variants across the genome, each with small effects, contribute to the trait's variability. 

![ldsr](https://github.com/Sagarnandeshwar/Linkage_Disequilibrium_Score_Regression/blob/main/image/ldsr.png)

## Dataset
For a phenotype of interest, we have collected the marginal statistics $\tilde{\beta}$ for M = 4268 SNPs and the MxM LD matrix R (i.e., pairwise SNP-SNP Pearson correlation). The marginal statistics are based on N = 1000 individuals.

You can find the dataset:

https://drive.google.com/drive/folders/1x2wMzxQ6ZUVdbLsugJdFBFeQXRpngeTb?usp=sharing

## Assumption 
There is no population stratification in this dataset. Both phenotype and genotype were standardized.
![snp_inference](https://github.com/Sagarnandeshwar/Linkage_Disequilibrium_Score_Regression/blob/main/image/snp_heritability.png)

