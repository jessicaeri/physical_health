Rails.application.routes.draw do
  get "/physhlths" => "physicalhealths#index"
  get "/physhlths/:id" => "physicalhealths#show"
  post "/physhlths" => "physicalhealths#create"
  patch "/physhlths/:id" => "physicalhealths#update"
  delete "/physhlths/:id" => "physicalhealths#destroy"
  
  get "/workouts" => "workouts#index"
  get "/workouts/:id" => "workouts#show"
  post "/workouts" => "workouts#create"
  patch "/workouts/:id" => "workouts#update"
  delete "/workouts/:id" => "workouts#destroy"


end
