class MyExamplesController < ApplicationController
    def example_exercise
        # Define an array of fortunes
fortunes = [
    "You will have a great day today!",
    "Be careful with your finances this week.",
    "A surprise is waiting for you around the corner."
  ]
  
  # Select a random fortune from the array
  random_fortune = fortunes.sample
  
  # Print the random fortune
  puts random_fortune
#   render json: {message: random_fortune}

    end
end


# Feature 1: The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.
# Feature 2: The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.
# Feature 3: Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.