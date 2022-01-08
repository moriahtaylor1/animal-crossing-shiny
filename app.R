#load packages
library(shiny)
library(bslib)

#load source file
#source("util.R")

encoding="UTF-8"

# Define UI for application that draws a histogram
ui <- fluidPage(theme = bs_theme(bootswatch = "cosmo"),
                includeCSS("www/stylize.css"),

    # Application title
    titlePanel("Animal Crossing: New Horizons"),
    
    navbarPage(title = "",
               
               #Home Page
               tabPanel("HOME", value = 
                    br(),
                    ##INTRODUCTION##
                    fluidRow(p(HTML("<em>Animal Crossing: New Horizons</em> is a social simulation video game developed by Nintendo for the Nintendo Switch. 
                                    It was released in March 20, 2020 and has been heralded by many as a go-to comfort during the COVID-19 global pandemic.
                                    The game is the fifth installment of the Animal Crossing series, which originally began in 2001 with the game <em>Animal 
                                    Crossing</em> which was available on the Nintendo GameCube."))),
                    br(),
                    fluidRow(p(HTML("In <em>New Horizons</em> the player controls a character which moves to a deserted island after purchasing a getaway 
                                    package from Tom Nook, playing the game in a nonlinear fashion and developing the island as they choose. They can gather 
                                    and craft items, customize the island's land, and develop it into a community of talking animals."))),
                    br(),
                    fluidRow(p(HTML("This web app has been developed as an attempt to explore different aspects of the game through data analysis and visualization.")))),
               
               #Villagers Page
               tabPanel("Villagers"),
               
               #Items Page
               tabPanel("Items"),
            
               #Reviews Page
               tabPanel("Reviews"))

    
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
}

# Run the application 
shinyApp(ui = ui, server = server)
