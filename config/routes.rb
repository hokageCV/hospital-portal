Rails.application.routes.draw do
  get "/receptionist", to: "receptionist#index", as: :receptionist
  post "/receptionist", to: "receptionist#create", as: :receptionist_create

  get "/receptionist/patients/:id/edit", to: "receptionist#edit", as: :edit_patient
  patch "/receptionist/patients/:id", to: "receptionist#update", as: :update_patient

  root "hospital#index"
end
