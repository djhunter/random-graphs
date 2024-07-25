library(tidyverse)
library(igraph)

g <- sample_forestfire(100, 0.2)
plot(g, layout = layout_with_kk)

pr <- page_rank(g)

data_frame(page_rank = pr$vector) %>%
  ggplot(aes(x = page_rank)) +
  geom_density()
