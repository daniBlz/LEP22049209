library(readr)
ds <- read_csv("Importante/Uni/DataScience/Tercero/S1/lpe22049209/coches-de-segunda-mano-sample.csv")
view(coches_de_segunda_mano_sample)

library(tidyverse)
locale()

locale(grouping_mark = '.')

ds<- ds %>% clean_names() %>% type_convert(locale = locale(grouping_mark = '.')) %>% glimpse()

mean_price <-ds %>% select(price,province) %>% drop_na() %>% group_by(province) %>% summarise(mean(price)) 

ds_2 <- ds %>% mutate(americano = model %in% c('DODGE','CHEVROLET','FORD','TESLA','GMC')) 

write.csv(ds, 'C:/Users/danie/OneDrive/Documentos/Importante/Uni/DataScience/Tercero/S1/lpe22049209//ds22049209.csv')

write.csv(ds_2, 'C:/Users/danie/OneDrive/Documentos/Importante/Uni/DataScience/Tercero/S1/lpe22049209//ds22049209_2.csv')
