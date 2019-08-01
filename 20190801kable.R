# https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html
library(tidyverse)
df <- read.csv("RefereesWWC.csv")
tibble(df)
devtools::install_github("haozhu233/kableExtra")
library(kableExtra)
kable(df)
df %>%
  kable() %>%
  kable_styling()
kable(df) %>%
  kable_styling(bootstrap_options = c("striped", "hover"))
kable(df) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))
kable(df) %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))
kable(df) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)
kable(df) %>%
  kable_styling(bootstrap_options = "striped", full_width = F, position = "left")
kable(df) %>%
  kable_styling(bootstrap_options = "striped", full_width = F, position = "float_right")
kable(df) %>%
  kable_styling(bootstrap_options = "striped", font_size = 7)
kable(df)%>%
  kable_styling(fixed_thead = T)
kable(df) %>%
  kable_styling("striped", full_width = F) %>%
  column_spec(5:7, bold = T) %>%
  row_spec(3:5, bold = T, color = "white", background = "#D7261E")
kable(df) %>%
  kable_styling("striped", full_width = F) %>%
  row_spec(0, angle = -45)
df1 %>%
  kable() %>%
  kable_styling()
# http://rprogramming.net/rename-columns-in-r/
library(data.table)
setnames(df, old=c("ID","ATM", "GTM", "DwellM", "YC", "RC"), 
         +          new=c("Game Identifier", "Actual Time (Minutes)", "Game Time (Minutes)", 
                          +                "Dwell (Minutes)", "Yellow Cards", "Red Cards"))
setnames(df1, old=c("ATM", "GTM", "DwellM"), 
         new=c("Actual Time (Minutes)", "Game Time (Minutes)", 
               "Dwell (Minutes)"))
df1 %>%
  kable() %>%
  kable_styling()
