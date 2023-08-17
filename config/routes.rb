Rails.application.routes.draw do
  get "/receptionist", to: "receptionist#index", as: :receptionist
  get "/receptionist/new", to: "receptionist#new", as: :new_patient
  post "/receptionist", to: "receptionist#create", as: :receptionist_create

  get "/receptionist/patients/:id/edit", to: "receptionist#edit", as: :edit_patient
  patch "/receptionist/patients/:id", to: "receptionist#update", as: :update_patient
  delete "/receptionist/patients/:id", to: "receptionist#destroy", as: :delete_patient
  delete "/receptionist/patients/:id/details", to: "receptionist#destroy", as: :delete_patient_details
  get "/receptionist/patients/:id", to: "receptionist#show", as: :patient_details

  get "/doctor/graph", to: "doctor#graph", as: :doctor_graph
  get "/doctor", to: "doctor#index", as: :doctor

  root "hospital#index"
end
