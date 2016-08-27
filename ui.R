
library(shiny)

shinyUI (pageWithSidebar(
  # Application title
  headerPanel("Guess The Number?"),

  sidebarPanel(
  #numericInput('input', 'Number', 1, min = 1, max= 100, step = 1),
  #submitbutton('Submit')
    textInput('guess', 'Number', value = ""),  
    h5('Please press \'Go!\' only on your first attempt'),
    actionButton("goButton", "Go!")
    ),
mainPanel(
        h2('Guess an integer between 1 and 100'),
        h5('The objective of this game is to guess an integer between
           1 and 100 (inclusive) and try to match it witht the computer\'s selection'),
        h3('Results of guess'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4('Which is...'),
        verbatimTextOutput("outputValue"),
        h5('Please note that the application will continue running even
           after you have guessed the number correctly. This its due to
           my first application'),
        h5('For a more comprehensive, better and visually pleasing version of
           this game (from an awesome developer), please go to this website: http://www.funbrain.com/guess/')
    )
)
)
