#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
   
    headerPanel(
        titlePanel("CARACTERÍSTICAS DE VIOLENCIA CONTRA LAS MUJERES"),
        
    ),
    navlistPanel(
        ####-------inidicador 1
        tabPanel("Indicador 1",

    # titulo indicador 1
    titlePanel("Mujeres que sufrieron humillacion o menosprecio(Violencia Psicologica"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            
            
            radioButtons("b1","tipo",choices = c("Total Mujeres",
                                                       "solteras",
                                                       "casadas","separadas")
            )
        ),
        
        

        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(
                tabPanel("graficos",
                    plotOutput("t1sol")
                )
                
            )
           
        )
    )
),
####--------indicador 2
        tabPanel("indicador 2",
                 titlePanel("Violencia en el ambito educativo"),
                 sidebarLayout(
                     sidebarPanel(
                         radioButtons("b2","Departamento", choices = c("Chuquisaca", "La Paz", 
                                                                       "Cochabamba", "Oruro",
                                                                       "Potosi","Tarija",
                                                                       "Santa Cruz","Beni","Pando")),
                         radioButtons("b3","area geografica",choices = c("urbano", "Rural"))
                     ),
            mainPanel(
                tabsetPanel(
                    tabPanel("indicador 2", plotOutput("t2"))
                )
            )
                         
                     )
                 ),
#### indcador 3
        tabPanel("indicador 3",
            titlePanel("Tipo de Violencia Ambito Laboral"),
            sidebarLayout(
                sidebarPanel(
                    radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
                ),
                mainPanel(
                    tableOutput("t3")
                )
            )
        ),
        
        tabPanel("indicador 4",
         titlePanel("Tipo de Violencia Ambito Social"),
         sidebarLayout(
             sidebarPanel(
                 #radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
             ),
             mainPanel(
                 #tableOutput("t3")
             )
         )
),

tabPanel("indicador 5",
         titlePanel("Tipo de Violencia Ambito Social"),
         sidebarLayout(
             sidebarPanel(
                 #radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
             ),
             mainPanel(
                 #tableOutput("t3")
             )
         )
),

tabPanel("indicador 6",
         titlePanel("Tipo de Violencia Ambito Social"),
         sidebarLayout(
             sidebarPanel(
                 #radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
             ),
             mainPanel(
                 #tableOutput("t3")
             )
         )
),

tabPanel("indicador 7",
         titlePanel("Tipo de Violencia Ambito Social"),
         sidebarLayout(
             sidebarPanel(
                 #radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
             ),
             mainPanel(
                 #tableOutput("t3")
             )
         )
),

tabPanel("indicador 8",
         titlePanel("Tipo de Violencia Ambito Social"),
         sidebarLayout(
             sidebarPanel(
                 #radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
             ),
             mainPanel(
                 #tableOutput("t3")
             )
         )
),

tabPanel("indicador 9",
         titlePanel("Tipo de Violencia Ambito Social"),
         sidebarLayout(
             sidebarPanel(
                 #radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
             ),
             mainPanel(
                 #tableOutput("t3")
             )
         )
),

tabPanel("indicador 10",
         titlePanel("Tipo de Violencia Ambito Social"),
         sidebarLayout(
             sidebarPanel(
                 #radioButtons("b4","tipo de violencia",choices = c("psicologica", "fisica","Economica_Patrimonial","sexual"))
             ),
             mainPanel(
                 #tableOutput("t3")
             )
         )
)
      
                 
                 
                 
            
        )

)
)
