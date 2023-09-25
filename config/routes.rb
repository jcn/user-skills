Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "examples/:page", to: "examples#page"

  # Defines the root path route ("/")
  root "users#index"
end
