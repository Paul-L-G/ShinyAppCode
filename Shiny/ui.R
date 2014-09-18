shinyUI(
	pageWithSidebar(
	headerPanel("Car Finder"),
		sidebarPanel(
		sliderInput('mpg', 'Miles Per Gallon greater than', 15, min = 10, max = 30, step = 5),
		sliderInput('qmile', 'Do the quarter mile in no more than (seconds)', 23, min = 15, max = 23, step = 1),
		p(em("Documentation:",a("Car Finder",href="index.html")))
	),
	mainPanel(
		h3('Car Finder Results'),
		h4('You wanted MPG of at least'),
		verbatimTextOutput("inputMPG"),
		h4('You wanted the quarter mile to take no longer than (seconds)'),
		verbatimTextOutput("inputQmile"),
		h4('Which resulted in finding '),
		verbatimTextOutput("CarList")
		)
	)
)