

library(pwr)
pwr.t2n.test(n1 = 32, n2= 32, d = 0.5, sig.level = 0.05)

dati <- read.csv("data/sim_betadiv.csv",sep=";",dec=",")

bd1 <- rnorm(n= 32, mean = 8, sd = 2)
bd2 <- rnorm(n= 32, mean = 7, sd = 1)
dati$betadiv <- c(bd1,bd2)

wilcox.test(betadiv ~ anno,
            paired = TRUE,
            alternative = "two.sided",
            data = dati)

dati$anno <- factor(dati$anno)
mod <- lm(n_specie ~ anno + cima*settore*anno, data = dati)
summary(mod)
library(sjPlot)
plot_model(mod, type="eff", terms=c("anno"))

