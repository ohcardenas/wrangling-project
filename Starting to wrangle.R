

library(tidyverse)
library(rvest)

url <- "https://www.foodnetwork.com/recipes/alton-brown/guacamole-recipe-1940609"

h <- read_html(url)
html_structure(h)

library(xml2)



name <- h %>% html_node(".o-AssetTitle__a-HeadlineText") %>% html_text()
name


preptime <- h %>% html_nodes(".o-RecipeInfo__a-Description") %>% html_text()

preptime

ingredients <- h %>% html_nodes(".o-Ingredients__a-Ingredient .checkbox-text")%>% html_text()
ingredients
ingredients_split <- str_split(ingredients, "\n")
ingredients_split

ingredients_trim <- str_trim(ingredients_split)

recipe <- list(name, preptime,ingredients)
recipe


.o-RecipeInfo__a-Description , .o-RecipeInfo__a-Headline , .o-Ingredients__a-Ingredient+ .o-Ingredients__a-Ingredient .checkbox-text , .o-AssetTitle__a-HeadlineText


.o-Ingredients__a-Ingredient--SelectAll~ .o-Ingredients__a-Ingredient+ .o-Ingredients__a-Ingredient .checkbox-text , .o-Ingredients__a-Ingredient+ .o-Ingredients__a-Ingredient .o-Ingredients__a-Ingredient--CheckboxLabel , .o-AssetTitle__a-HeadlineText , .o-RecipeInfo__a-Description


ingredients


ingredients_split

.o-AssetTitle__a-HeadlineText , .checkbox-text , .o-RecipeInfo__a-Description




install.packages("trees")

datasets::trees

as_tibble(trees) %>% print(n = 5 , width = Inf)

tible_trees <- as_tibble(trees)

# new function interesting


slice_sample(tible_trees, n = 10)




slice_head(tible_trees, n = 10 )



slice_tail(tible_trees, n = 10)





### create a tibble


df <- tibble( a = 1:5,
        b = 6:10,
        c = 1,
        z = (a+b)^2+c)



df[[4]]



### Excel Files


install.packages("readxl")

library(readxl)

read_excel()



###google sheets


install.packages("googlesheets4")

library(googlesheets4)



gs4_auth()
1
1
1



gs4_find()


read_sheet("1aURxQfjR_HwNLtBGyorZ4-XAFbfSjKP_mExTzsiQquc")





## csv files 



library(readr)



read_csv()


?read_csv


## read tsv files 

read_tsv()

## to read tabular data in text files use the function 

read_delim()




### TO write down a file that is in csv format you ca use the
### function 


write_csv(df_csv, path = "my_csv_file.csv")





### Relational Data bases

install.packages("RSQLite")

library(RSQLite)

### Specify the driver 



sqlite <- dbDriver("SQLite")
sqlite <- dbDriver("SQLite")


## Connect To the data base 

db <- dbConnect(sqlite, "company.db")
db <- dbConnect(sqlite, "company.db")


dbListTables(db)
dbListTables(db)


getwd()
