Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

 get "pictures" => "pictures#index"
 get "pictures/:id" => "pictures#show", as: "picture"
end
