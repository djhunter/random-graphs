library(tidyverse)
library(igraph)

n <- 100000 # max ≈ 50000 if bw.factor = 1. Otherwise more.
g <- sample_forestfire(n, fw.prob = 0.37, bw.factor = 0.86)
# plot(g, layout = layout_with_kk)

pr <- page_rank(g)

tibble(page_rank = pr$vector) %>%
  ggplot(aes(x = page_rank)) +
  geom_histogram(bins = 200) +
  xlim(0, 1/n)
