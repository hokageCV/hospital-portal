Rails.application.routes.draw do
  get "/receptionist", to: "receptionist#new", as: :receptionist
  post "/receptionist", to: "receptionist#create", as: :receptionist_create

  root "hospital#index"
end
