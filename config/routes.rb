Rails.application.routes.draw do
  get "/physhlths" => "physicalhealths#index"
  get "/physhlths/:id" => "physicalhealths#show"
  post "/physhlths" => "physicalhealths#create"
  patch "/physhlths/:id" => "physicalhealths#update"
  delete "/physhlths/:id" => "physicalhealths#destroy"
end
