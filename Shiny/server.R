data(mtcars)
shinyServer(
	function(input, output) {
		react2mpg <- reactive({as.numeric(input$mpg)})
		react2qmile <- reactive({as.numeric(input$qmile)})
		output$inputMPG <- renderText({react2mpg() })
		output$inputQmile <- renderText({react2qmile() })
		output$CarList <- renderPrint({
					if (nrow(mtcars[mtcars$mpg > input$mpg & mtcars$qsec < input$qmile,1:7]) > 0)
					  mtcars[mtcars$mpg > input$mpg & mtcars$qsec < input$qmile,1:7]
					 else
					  cat("You must be dreaming ;-)")
					})
	}
)