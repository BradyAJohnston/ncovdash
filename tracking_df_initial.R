library(tidyverse)

# df <- readr::read_tsv("data/World_variants_summary.tsv",
#                       col_names = c(
#                         "ID",
#                         "Clade",
#                         "SourceCountry",
#                         "MFIsolates",
#                         "FirstSeen",
#                         "LastSeen",
#                         "Severity",
#                         "CountriesInfected",
#                         "MF",
#                         "MFSignature",
#                         "InfectedCountry",
#                         "Accessions",
#                         "Lineages"
#                       ))

# df <- readr::read_tsv("data/World_variants_summary.tsv",
#                       col_names = c(
#                         "ID",
#                         "Location",
#                         "someletter",
#                         "Clade",
#                         "date",
#                         "SourceCountry",
#                         "MF",
#                         "InfectionCountry",
#                         "City",
#                         "SampleDate",
#                         "MFSignature"
#                       ))
#
# saveRDS(df, "data/world_df.RDS")

# df <- readRDS("data/world_df.RDS")

# df <- df %>%
#   mutate(SourceCountry = stringr::str_remove(SourceCountry, "Source:")) %>%
#   mutate(InfectionCountry = stringr::str_remove(InfectionCountry, "infected:")) %>%
#   mutate(SampleDate = stringr::str_remove(SampleDate, "sample date:")) %>%
#   mutate(MFSignature = stringr::str_remove(MFSignature, "mutation_signature:"))
#
# df$Location <- as.factor(df$Location)
# df$someletter <- as.factor(df$someletter)
# df$SourceCountry <- as.factor(df$SourceCountry)
# df$City <- as.factor(df$City)
# df$Clade <- as.factor(df$Clade)
#
# saveRDS(df, "data/world_df.RDS")

df <- readRDS("data/world_df.RDS")

df[6, "MFSignature"] %>%
