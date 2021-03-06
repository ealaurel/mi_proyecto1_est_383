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
                barplot(prop.table(x[[i]]),col = "darkgray",border = "white")
            }
        }
        #indicador dos violencia ambito educativo
        
        #area<-c("urbano", "Rural")
        
        #bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        #hist(x, breaks = bins, col = 'darkgray', border = 'white')
        #######indicador 2

    })
    
   output$t2<-renderPlot({
       library(dplyr)
       x2 <- ind2
       depto_e<-c("Chuquisaca", "La Paz", "Cochabamba", "Oruro","Potosi",
                "Tarija","Santa Cruz","Beni","Pando")
       area_e<-c("urbano", "Rural")
       for (i in 1:9) {
           for (j in 1:2) {
               if(input$b2==depto_e[i]){
                   if(input$b3==area_e[j]){
                       x2<-ind2 %>% filter(depto==depto_e[i],area==area_e[j])
                       barplot(prop.table(table(x2$S1_11_1)))
                   }
               }
               
           }
           
       }
       
   })
   
   output$t3<-renderTable({
       x3<-ind3
       tipo_v<- c("psicologica", "fisica","Economica_Patrimonial","sexual")
       for (i in 1:4) {
           if(input$b4==tipo_v[i]){
               k<-dim(ind3[[i]])[2]
               for (j in 1:k) {
                   prop.table(table(x3[[i]][,j]))
               }
           }
           
       }
       
           #if(input$b4=="psicologica"){
            #   prop.table(table(ind3$S1_21A_1))
             #  prop.table(table(ind3$S1_21A_2))
           #}
           #if(input$b4=="fisica"){
            #   prop.table(table(ind3$S1_21A_3))
           #}
           #if(input$b4=="Economica_Patrimonial"){
            #   prop.table(table(ind3$S1_21A_4))
           #}
           #if(input$b4=="sexual"){
            #   prop.table(table(ind3$S1_21A_5))
            #   prop.table(table(ind3$S1_21A_6))
             #  prop.table(table(ind3$S1_21A_7))
           #}
       
       
       
   })

})
