#load packages
library(tidyverse) #data cleaning and wrangling
library(tidytuesdayR) #get data
library(ragg) #save visuals
library(showtext) #use custom text in visuals
library(DescTools) #Zodiac() function

#load all datasets
critic <- readr::read_tsv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-05/critic.tsv')
user_reviews <- readr::read_tsv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-05/user_reviews.tsv')
items <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-05/items.csv')
villagers <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-05/villagers.csv')

#convert birthday to date
villagers$birthday <- as.Date(villagers$birthday, format="%m-%d")
#evaluate birthday dates to zodiac signs
villagers$sun_sign <- Zodiac(villagers$birthday)
#put sun signs in order by factoring the column
villagers$sun_sign <- factor(villagers$sun_sign,
                             levels = c("Aries", "Taurus", "Gemini", "Cancer", "Leo",
                                        "Virgo", 'Libra', "Scorpio", "Sagittarius", "Capricorn",
                                        "Aquarius", "Pisces"))

#load fonts
font_add(family="title", "AnimalCrossing.ttf")
font_add(family="regular", "Nunito-Bold.ttf")
showtext_auto()

