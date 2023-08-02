rm(list=ls(all=TRUE))

N <- 1000

LD_csv <- "~/Documents/Teaching/COMP565_Winter2023/Assignments/A1/data/LD.csv.gz"
R <- as.matrix(read.csv(LD_csv, row.names = 1))

beta_marginal_csv <- "~/Documents/Teaching/COMP565_Winter2023/Assignments/A1/data/beta_marginal.csv.gz"
beta_marginal <- as.matrix(read.csv(beta_marginal_csv, row.names=1))

M <- nrow(beta_marginal)

#### LDSR ####
chisq <- N*beta_marginal^2 - 1
ldsc <- N*colSums(R^2)
fit <- lm(chisq ~ ldsc - 1) # correct because this means: N chsq ~ (h2/M) N ldsc + 1
h_g_2_est <- M*fit$coefficients
print(h_g_2_est)

