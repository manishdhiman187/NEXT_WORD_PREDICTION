### Coursera's Data Science Capstone : Final Project
### ui.R file for the Shiny app
### It builds required UI for Next Word Predictor application which accepts an n-gram and predicts the next word.

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
library(png)
shinyUI(navbarPage("Coursera's Data Science Capstone: Final Project",
                   tabPanel("Next Word Predictor",
                            HTML("<strong>Author:MANISH DHIMAN</strong>"),
                            br(),
                            HTML("<strong>Date: 04 JANUARY 2022</strong>"),
                            br(),
                         
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("This application takes your string and predict the next word to your string"),
                                    textInput("inputString", "Enter your word or partial phrase here",value = ""),
                                    helpText("Once you finished typing your word or phrase, please click on the below button NextWord to suggest next expected word for your word or phrase"),
                                    submitButton('NextWord'),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    h2("The suggested next word for your word or phrase is"),
                                    br(),
                                    strong("You entered the following word or phrase as Input to the application:"),
                                    verbatimTextOutput("prediction"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                    textOutput('text1')
                                )
                            )
                            
                   ),
                   tabPanel("Overview",
                            mainPanel(
                              includeMarkdown("Overview.md")
                             )
                   ),
                   tabPanel("Instructions",
                            mainPanel(
                    includeMarkdown("Instructions.md")
                            )
                   )
                
)
)