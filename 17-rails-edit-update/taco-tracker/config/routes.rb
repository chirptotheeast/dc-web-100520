Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "application#home"
  get "/hi/:name", to: "application#hello", as: "hello"
  get "/addition/:x/:y", to: "application#adding", as: "adding"
  get "/about_yummy_foods", to: "application#about", as: "about_tacos"

  # get "/tacos", to: "tacos#index", as: "tacos"
  # get "/tacos/new", to: "tacos#new", as: "new_taco"
  # get "/tacos/:id", to: "tacos#show", as: "taco"
  # post "/tacos", to: "tacos#create", as: "tacos"
  resources :tacos, only: [:new, :index, :show, :create, :edit, :update]
  get "/show_the_taco_form", to: "tacos#petey_is_great"
get "/print_to_terminal", to: "tacos#rubydooby"
  get("/hi_all", {to: "application#greetings", as: "greetings"})
  
end
