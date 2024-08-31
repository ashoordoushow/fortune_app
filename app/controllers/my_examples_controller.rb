class MyExamplesController < ApplicationController
    def fortune
        # Define an array of fortunes   #(always break down your task/question, before creating your logic to make life easier and more understanding when writing out your logic.)
        # Select a random fortune from the array
        # Print the random fortune back to web browser using 'render json:'
fortunes = [                         # I used chatgpt to create an 'array' placed as the variable 'fortunes', and has a bunch of strings printing out 3 different kinds of fortunes being told.
    "You will have a great day today!",                      # strings inside of an 'array'
    "Be careful with your finances this week.",
    "A surprise is waiting for you around the corner."
  ]
  
  
  random_fortune = fortunes.sample             # '.sample' is a method called on an array. It returns a random element from the array. In this case, it will pick a random fortune from the fortunes array.
                                               # random _fortunes is the variable set to store the result of the '.sample' method.
  
  render json: {message: random_fortune} #Over here I just select whatever output I want to send back to the web; either 'random_fortune' OR 'lotto_numbers'

    end
    # created a new 'def' method after 'end' of first 'def' method created to send web browser new output using a new 'render json:' message.
    def lotto_numbers
    # Generate 6 unique random numbers between 1 and 60
    # Print the generated lotto numbers in the web browser using 'render json:'
        lotto_numbers = "Your predicted lotto numbers are: #{(1..60).to_a.sample(6)}" #'.sample' method is used in here as well to select a random number from 1-60, 6 times.
                                                                              # I used the '#{}' inside of the string to print words to result in a complete sentence.
        render json: {message: lotto_numbers}
# this is just to see what it prints in the server (in terminal) => 'puts "Your predicted lotto numbers are: #{lotto_numbers.sort.join(', ')}"'
    end

    # Every time a user visits/refreshes the page, 
    # the page should tell the user the number of visits made to 
    # that page so far. NOTE: This is impossible, but you should try your hand at 
    # this for a few minutes to discover why it’s impossible.

    def page_count
        page_count = 0  # we are trying to count the number of times someone visits the page
        page_count += 1
        render json: {message: page_count}
    end

end


# Feature 1: The page should return a random fortune. Every time you refresh the page, you’ll get a new fortune. You should make up at least 3 different fortunes.
# Feature 2: The page should return 6 randomly generated numbers between 1 and 60 so as to predict the upcoming lotto numbers.
# Feature 3: Every time a user visits/refreshes the page, the page should tell the user the number of visits made to that page so far. NOTE: This is impossible, but you should try your hand at this for a few minutes to discover why it’s impossible.