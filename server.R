library(shiny)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({ 
    if(input$ale*input$genes < 31){  
      alelos <- seq(0,input$ale-1)
      lista<- list(input$genes)
      for(i in 1:input$genes) lista[[i]]<-alelos
      tab <- expand.grid(lista)
      phenotype <- apply(tab, 1, sum)
      G <- ggplot(data=data.frame(phenotype), aes(x=phenotype)) + geom_histogram()
      G <- G + theme_bw()
      G} else {
        plot.new()
        text(0.5, 0.5, "demasiadas combinaciones")
      }
  })
})
