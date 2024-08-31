Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/class_exercise", controller: "my_examples", action: "fortune" #get "example" is what you copy and paste at the end of localhost:3000 aka your url

  get "/second_feature", controller: "my_examples", action: "lotto_numbers" # controller: "my_examples" is connnected to the controller you made 'my_examples_controller.rb' (by typing 'rails generate controller my_examples') in terminal

  get "/page_visits", controller: "my_examples", action: "page_count" # action: is the label of your 'class' in your 'my_example_controller.rb' file, which then outputs whatever 'method' you have set up inside of the 'class' using 'render json: {}'

  # Defines the root path route ("/")
  # root "posts#index"
end

