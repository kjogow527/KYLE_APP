library(shiny)
library(shinydashboard)
library(shinyjs)
library(shinyWidgets)

ui <- dashboardPage(
  skin = "purple", # Set the skin color to purple
  
  dashboardHeader(
    title = ""
  ),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("RESUME", tabName = "RESUME"),
      menuItem("CAPSTONE", tabName = "CAPSTONE"),
      menuItem("DEEP LEARNING", tabName = "DEEP LEARNING",
               startExpanded = TRUE,
               menuSubItem("TRANSFORMER-GPT", tabName = "TRANSFORMER-GPT"),
               menuSubItem("CONVOLUTIONAL NN", tabName = "CONVOLUTIONAL_NN"),
               menuSubItem("MULTI CLASSIFICATION", tabName = "MULTI_CLASSIFICATION"),
               menuSubItem("STOCK TRADING LSTM", tabName = "STOCK_TRADING_LSTM")
      ),
      menuItem("COMPUTER SCIENCE", tabName = "COMPUTER_SCIENCE"),
      menuItem("DATA SCIENCE", tabName = "DATA_SCIENCE"),
      menuItem("ECONOMETRIC ANALYSIS", tabName = "ECONOMETRIC_ANALYSIS"),
      menuItem("EMPLOYMENT DATABASE WEB APP", tabName = "WEB_APP")
    )
  ),
  dashboardBody(
    
    setBackgroundImage(
      src = "ai_brain.gif",
      shinydashboard = TRUE
    ),
    
   
    tabItems(
      tabItem(tabName = "RESUME",
          fluidPage(
            
            tags$style(HTML("
             .custom-h3 {
             color:#006bb3;
             font-family: Lucida Console;
              #background-color: #F0F0F0;
              padding: 0px;
              #border: 2px solid #007BFF;
              border-radius: 5px;
              font-size: 15px;
              
             }
             ")),
            
           
            
            tags$style(HTML("
             .year-p {
             color: #c6bfb5;
              #background-color: #2485e2;
              padding: 0px;
              font-size: 11px;
              #border-radius: 5px;
              font-family: Lucida Console;
              padding-left: 0px !important;
             }
             ")),
            
            tags$style(HTML("
             .text-p {
             color: #c6bfb5;
              #background-color: #2485e2;
              text-indent: -1.5em;
              padding: 0px;
              font-size: 12px;
              #border-radius: 5px;
              font-family: Lucida Console;
              padding-left: 25px !important;
             }
             ")),
            
            tags$style(HTML("
             .text-e-p {
             color: #c6bfb5;
              #background-color: #2485e2;
              text-indent: -1.5em;
              padding: 0px;
              font-size: 12px;
              #border-radius: 5px;
              font-family: Lucida Console;
              padding-left: 30px !important;
             }
             ")),
            
            
            
            
            tags$style(HTML("
             .intro-h3 {
              font-size: 32px;
             color: #ffffff;
             font-family: serif;
              #background-color: #F0F0F0;
              padding: 10px;
              #border: 2px solid #007BFF;
              border-radius: 5px;
              
             }
             ")),
            
            tags$head(tags$style("#queryText{
                                  color: #5c86f9;
                                  padding-left: 40px !important;
                                  background-color: #000000;
                                  font-size: 18px;
                                  padding: 2px;
                                  border: 2px solid #007BFF;
                                  border-radius: 5px;
                                  font-family: cursive;
                                  padding-left: 20px;
                                 }"
                                )),
            
            tags$style(HTML("
             .intro-p {
             color: #c6bfb5;
              padding-left: 40px !important;
              #background-color: #F0F0F0;
              font-size: 18px;
              padding: 2px;
              #border: 2px solid #007BFF;
              #border-radius: 5px;
              font-family: cursive;
              padding-left: 25px;
             }
             ")),
            
            
            
            
             fluidRow(
                
                       
                       box(
                         title = "Welcome", solidHeader = FALSE,
                         collapsible = TRUE, background = "navy",width = 12,
                         
                         tags$h3("Welcome to my Digital Resume!", class = "intro-h3"),
                         
                         textOutput("queryText"),
                         
                         tags$p("On the tabs to the left you can view my projects, skills, and Learn about my Manitoba Hydro Capstone project I prepared for Jay Grewal the President and CEO.", class = "intro-p"),
                         p("This website was coded deployed, and hosted myself.", class = "intro-p")
                         
                         
                         
                         
                       ),
                       
                
                       
                       box(
                         title = "Education", solidHeader = TRUE,
                         collapsible = TRUE, background = "navy", width = 12,
                         
                         tags$h3("University of Manitoba — BA Econometrics", class = "custom-h3"),
                         tags$p("September 2019 - May 2024, Winnipeg Manitoba", class = "year-p"),
                         tags$p("Minor: Leadership in Business and Organizations", class = "year-p"),
                        
                         
                         
                       ),
                       
                       box(
                         title = "SKILLS", solidHeader = TRUE,
                         collapsible = TRUE, background = "navy", width = 12,
                         
                         fluidPage(
                           fluidRow(
                             column(6,
                                    tags$p("- R and RShiny", class = "text-p"),
                                    tags$p("- SQL", class = "text-p"),
                                    tags$p("- Data Modelling", class = "text-p"),
                                    tags$p("- Power Apps, Power Automate, Power Query, and Power BI", class = "text-p"),
                                    tags$p("- Microsoft 365", class = "text-p"),
                                    tags$p("- Linux Redhat", class = "text-p"),
                                    tags$p("- Machine Learning data models", class = "text-p")
                                    
                                    
                             ),
                             column(6,
                                    tags$p("- Econometrics Modeling", class = "text-p"),
                                    tags$p("- Multivariate Regression", class = "text-p"),
                                    tags$p("- Advanced Micro and Macroeconomic Theory", class = "text-p"),
                                    tags$p("- Python", class = "text-p"),
                                    tags$p("- SPSS", class = "text-p"),
                                    tags$p("- Pytorch Machine Learning", class = "text-p")
                                    
                                    
                                    
                                    )
                         ))
                       ),
                       
                       box(
                         title = "Job Experience", solidHeader = TRUE,
                         collapsible = TRUE, background = "navy", width = 12,
                         
                         tags$h3("Manitoba Hydro - Customer Data & Analytics", class = "custom-h3"),
                         tags$p("May 2023 - Present", class = "year-p"),
                         tags$p("· Working to restructure the customer feedback survey enabling better use and knowledge being gained from existing data.", class = "text-p"),
                         tags$p("· Working within Power BI to improve dashboard accessibility features.", class = "text-p"),
                         tags$p("· Developing a text classification model using R and Pytorch to classify customer responses.", class = "text-p"),
                         tags$p("· Built out customer database and cleaned up old existing data which enabled time series reporting on historical periods.", class = "text-p"),
                         
                         tags$h3("Manitoba Hydro - Transmission Distribution environment and engagement Student", class = "custom-h3"),
                         tags$p("May 2022 - May 2023", class = "year-p"),
                         
                         tags$p("· Developed technology solutions for business processes which increased the speed and accuracy of tasks.", class = "text-p"),
                         tags$p("· Developed a business solution for enabling Manitoba Hydro’s desire to provide Indigenous Manitobans with career development opportunities. I designed, programmed, and deployed my RShiny solution which leveraged data modelling to streamline the hiring process.", class = "text-p"),
                         tags$p("· Wrote, edited, and drafted materials for two transmission projects to ensure public engagement.", class = "text-p"),
                         tags$p("· Analyzed survey data and provided meaningful insights on what factors were driving effects.", class = "text-p"),
                         tags$p("· Developed a Natural Language Model for creating commitment tables which eliminated the need to read thousands of pages of documents thus freeing human resources for other tasks.", class = "text-p"),
                         
                         
                         tags$h3("Manitoba Hydro - Utility Locating", class = "custom-h3"),
                         tags$p("May 2021 - Sep 2021", class = "year-p"),
                         
                         tags$p("· Located underground gas and electric utilities to provide for customer and business needs.", class = "text-p"),
                         tags$p("· Responded to gas emergencies leading work crews to safe and effective resolutions.", class = "text-p"),
                         tags$p("· Discussed safe work procedures with customers thus increasing safety for customers, bystanders, and Manitoba Hydro infrastructure. ", class = "text-p"),
                         
                         tags$h3("University Of Manitoba - Climbing Wall Supervisor", class = "custom-h3"),
                         tags$p("Apr 2021 - Present", class = "year-p"),
                         
                         
                         tags$p("· Supervising open climb time to ensure customers are staying safe and using equipment as intended.", class = "text-p"),
                         tags$p("· Facilitating climbing orientations and safety instruction for new climbers.", class = "text-p"),
                         tags$p("· Performing top rope and lead belay testing to ensure customers have the skills required to safely use the facility.", class = "text-p")
                         
                         
                       ),
                       
                       box(
                         title = "References", solidHeader = TRUE,
                         collapsible = TRUE, background = "navy", width = 12
                         
                       )
                       
                       
              
                       
                      
                       
                       
               
             )
          )
       ),
      
      tabItem(tabName = "EXPERIENCE",
              fluidPage(
                
                
                
                
              setBackgroundImage(
                src = "nn.gif",
                shinydashboard = TRUE
              ),
              p("This website was coded, hosted, and deployed by Kyle Wog")
              )
      ),
      
      tabItem(tabName = "CONVOLUTIONAL_NN",
              fluidPage(
                
                tags$style(HTML("
                .introconv-h3 {
                  font-size: 32px;
                 color: #00ffd2;
                font-family: serif;
                  #background-color: #F0F0F0;
                  padding: 10px;
                 #border: 2px solid #007BFF;
                 border-radius: 5px;
              
                }
             ")),
                
                
                
                
                fluidRow(
                  box( title = "", solidHeader = TRUE,
                       collapsible = TRUE, background = "navy", width = 12,
                       tags$h3("Pytorch Convolutional Neural Network", class = "introcomv-h3")
                  )
                  
                ),
                
                fluidRow(
                
                column(6,
                       
                       box( title = "What is a convolutional Neural Network?", solidHeader = TRUE,
                            collapsible = TRUE, background = "navy", width = 12,
                            
                            tags$p("A CNN is a deep learning algorithm for image recognition, using convolutional, pooling, and fully connected layers to detect features and make predictions.", class = "text-p"),
                    
                         img(src = "cnn.gif", style = "max-width: 100%;"),
                         img(src = "xray.jpeg", style = "max-width: 100%;")
                      
                       )
                
                
                
                ),column(6,
                         
                         
                         box( title = "Image classification Project:", solidHeader = TRUE,
                              collapsible = TRUE, background = "navy", width = 12,
                              img(src = "cnn_data.png", style = "max-width: 100%;"),
                              img(src = "cnn.png", style = "max-width: 100%;"),
                              img(src = "cnn_train.png", style = "max-width: 100%;")
                              
                         )   
                         
                         
                         
                
                )
                
                )
              )
      ),
      
      
      
      
      
      tabItem(tabName = "MULTI_CLASSIFICATION",
              fluidPage(
                
                tags$style(HTML("
                .introconv-h3 {
                  font-size: 32px;
                 color: #00ffd2;
                font-family: serif;
                  #background-color: #F0F0F0;
                  padding: 10px;
                 #border: 2px solid #007BFF;
                 border-radius: 5px;
              
                }
             ")),
                
                
                
                
                fluidRow(
                  box( title = "", solidHeader = TRUE,
                       collapsible = TRUE, background = "navy", width = 12,
                       tags$h3("Pytorch Classification Model", class = "introcomv-h3")
                  )
                  
                ),
                
                fluidRow(
                  
                  column(6,
                         
                         box( title = "What is a Classification model?", solidHeader = TRUE,
                              collapsible = TRUE, background = "navy", width = 12,
                              
                              
                              tags$p("A multi-classification neural network uses softmax activation and cross-entropy loss for categorizing inputs into multiple classes.", class = "text-p"),
                              
                              
                              img(src = "multi_class_output.gif", style = "max-width: 100%;")
                              
                         )
                         
                         
                         
                  ),column(6,
                          
                           
                           
                           box( title = "Data classificatoin Project:", solidHeader = TRUE,
                                collapsible = TRUE, background = "navy", width = 12,
                                img(src = "multi_class_data.png", style = "max-width: 100%;"),
                                img(src = "multi_class_model.png", style = "max-width: 110%;")
                                
                                
                                
                           )   
                           
                           
                           
                           
                  )
                  
                )
              )
      ),
      
      
      tabItem(tabName = "STOCK_TRADING_LSTM",
              fluidPage(
                
                tags$style(HTML("
                .introconv-h3 {
                  font-size: 32px;
                 color: #00ffd2;
                font-family: serif;
                  #background-color: #F0F0F0;
                  padding: 10px;
                 #border: 2px solid #007BFF;
                 border-radius: 5px;
              
                }
             ")),
                
                
                
                
                fluidRow(
                  box( title = "", solidHeader = TRUE,
                       collapsible = TRUE, background = "navy", width = 12,
                       tags$h3("Pytorch LSTM Model", class = "introcomv-h3"),
                                    
                  )
                  
                ),
                
                fluidRow(
                  
                  column(6,
                         
                         box( title = "What is a LSTM model?", solidHeader = TRUE,
                              collapsible = TRUE, background = "navy", width = 12,
                              
                              tags$p("LSTM is a type of recurrent neural network for sequential data, capable of capturing long-range dependencies, commonly used in language processing, speech recognition, and time series forecasting.", class = "text-p"),
                              
                              
                              img(src = "lstm.gif", style = "max-width: 100%;")
                              
                         )
                         
                         
                         
                  ),column(6,
                           
                           
                           
                           box( title = "Stock LSTM Project:", solidHeader = TRUE,
                                collapsible = TRUE, background = "navy", width = 12,
                                img(src = "multi_class_data.png", style = "max-width: 100%;"),
                                img(src = "multi_class_model.png", style = "max-width: 100%;")
                                
                                
                                
                           )   
                           
                           
                           
                           
                  )
                  
                )
              )
      ),
      
      
      tabItem(tabName = "COMPUTER_SCIENCE",
              
              fluidPage(
                
                tags$style(HTML("
             .cs-h3 {
             color: #605ca8;
             font-family: cursive;
              #background-color: #F0F0F0;
              #padding: 10px;
              #border: 2px solid #007BFF;
              #border-radius: 2px;
              
             }
             ")),
                
                tags$style(HTML("
             .cs-p {
             color: #ffffff;
             font-family: cursive;
              #background-color: #F0F0F0;
              #padding: 10px;
              #border: 2px solid #007BFF;
              #border-radius: 2px;
               padding-left: 40px !important;
             }
             ")),
                
                
                fluidRow(
                  
                  box( title = "COMPUTER SCIENCE:", solidHeader = TRUE,
                       collapsible = TRUE, background = "navy", width = 12,
                       
                       ## PYTHON________________________________________________________________
                       
                       fluidRow(
                         
                         column(3,
                                img(src = "python.png", style = "max-width: 100%;")
                                ),
                         column(9,
                                tags$h3("PYTHON:", class = "cs-h3" ),
                                tags$p("Developed Neural networks using Pytorch for text clasification at Manitoba Hydro.", class = "cs-p" ),
                                tags$p("Transformed and cleaned Data while working at Manitoba Hydro.", class = "cs-p" ),
                                tags$p("Web Scraped images to for Coral Reef Dataset.", class = "cs-p" )
                                )
                       ),
                       
                       
                       ## R_________________________________________________________________________
                       
                       fluidRow(
                         
                         column(3,
                                img(src = "r.png", style = "max-width: 100%;")
                         ),
                         column(9,
                                tags$h3("R:", class = "cs-h3" ),
                                tags$p("Developed Database Management System for employment database processing.", class = "cs-p" ),
                                tags$p("Developed R shiny web applications involving secure self designed login and account system with end to end encryption.", class = "cs-p" ),
                                tags$p("GIS Data Analysis.", class = "cs-p" ),
                                tags$p("Linear, Non Linear, Multiple, and logistic Regression.", class = "cs-p" ),
                                tags$p("Web Data Scraping", class = "cs-p" )
                         )
                       ),
                       
                       ##PYTORCH____________________________________________________________________
                       
                       fluidRow(
                         
                         column(3,
                                img(src = "pytorch.png", style = "max-width: 100%;")
                         ),
                         column(9,
                                tags$h3("PYTORCH:", class = "cs-h3" ),
                                tags$p("Developed Multi classification Data Models", class = "cs-p" ),
                                tags$p("Developed Transformer NN and trained my own tech support gpt.", class = "cs-p" ),
                                tags$p("Convolutional neural network for x-ray image classification", class = "cs-p" )
                         )
                       ),
                       
                       ##SQL___________________________________________________________________________
                       
                       
                       fluidRow(
                         
                         column(3,
                                img(src = "sql.png", style = "max-width: 100%;")
                         ),
                         column(9,
                                tags$h3("SQL:", class = "cs-h3" ),
                                tags$p("Developed A SQL Server for my Manitoba Hydro web application.", class = "cs-p" ),
                                tags$p("General Database Query's", class = "cs-p" ),
                                
                         )
                       ),
                       
                       ## REDHAT_____________________________________________________________________
                       
                       fluidRow(
                         
                         column(3,
                                img(src = "redhat.png", style = "max-width: 100%;")
                         ),
                         column(9,
                                tags$h3("REDHAT LINUX:", class = "cs-h3" ),
                                tags$p("Hosted and maintained Server at Manitoba Hydro.", class = "cs-p" ),
                                tags$p("Deployed Web Applications for Manitoba Hydro.", class = "cs-p" ),
                                tags$p("Hosted SQL Server and data transformation API", class = "cs-p" )
                                
                         )
                       ),
                       
                       
                  )
                  
                  
                  
                )
   
              )
    ),
    
    #_________________________________________________________________________________________________
    
    
    tabItem(tabName = "WEB_APP",
            
            fluidPage(
            
              
              box( title = "Employment Database:", solidHeader = TRUE,
                   collapsible = TRUE, background = "navy", width = 12,
                   fluidPage(
                   
                   img(src = "database_login.png", style = "max-width: 100%;")
            
                   )
              )# end of box
            )# End of fluid Page      
    )# end of comp sci
   )
  )
)


server <- function(input, output, session) {
  
  source("backend.R")
  
  
  
  
    
    output$queryText <- renderText({
      
      
      print(get_info(session$clientData$url_search))
      })
    
  
}



shinyApp(ui, server)
