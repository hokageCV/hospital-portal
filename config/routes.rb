Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get "/patient/new", to: "patient#index", as: receptionist

  root "hospital#index"
end
