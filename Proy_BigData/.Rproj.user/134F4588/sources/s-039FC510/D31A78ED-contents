#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$t1sol <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- ind1
        tipo<-c("Total Mujeres","solteras",
                "casadas","separadas")
        title(main ="Mujeres que fueron Humilladas por algun conocido o desconocido en porcentaje")  
        for(i in 1:4){
            if(input$b1==tipo[i]){
                barplot(prop.table(x[[i]]))
            }
        }
        
        
        #bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        #hist(x, breaks = bins, col = 'darkgray', border = 'white')
        

    })

})
