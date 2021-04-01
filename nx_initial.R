library(tidyverse)

# df <- readr::read_tsv("data/nextstrain_ncov_global_metadata.tsv")


# saveRDS(nx_df, "data/nx_df.rds")

nx_df <- readRDS("data/nx_df.rds")

nx_df %>%
  select(Strain,
         `S1 mutations`,
         Age,
         `Country of Exposure`,
         Country,
         Location) %>% head()
  filter(!is.na(`S1 mutations`)) %>%
  group_by(`Country of Exposure`) %>%
  summarise(n = n()) %>%
  filter(n > 10) %>%


  ggplot(aes(y = reorder(`Country of Exposure`, n),
             x = n)) +
  geom_col() +
  labs(
    x = "Number of Cases with S1 Mutations",
    y = "Country of Case Exposure",
    title = "Where were S1 Mutations Cases Acquired?"
  ) +
  theme_void(base_size = 4) +
  geom_text(
    aes(x = 1,
        y = `Country of Exposure`,
        label = `Country of Exposure`),
    colour = gray(0.9),
    hjust = 0,
    size = 2
  ) +
  geom_text(
    aes(
      x = n,
      y = `Country of Exposure`,
      label = n
    ),
    hjust = 0,
    nudge_x = 1,
    size = 2
  )

ggsave("testplot.png", width = 9, height = 5)
