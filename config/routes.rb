Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/doctors/:doctor_id', to: 'doctors#show'

  get '/hospitals/:hospital_id', to: 'hospitals#show'

  delete '/doctor_patients/:patient_id', to: 'doctor_patients#destroy'
end
