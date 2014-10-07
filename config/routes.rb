Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

  root "pictures#index"

  get "pictures" => "pictures#index"

  post "pictures" => "pictures#create"
  get "pictures/new" => "pictures#new"

  get "pictures/:id" => "pictures#show", as: "picture"
end
