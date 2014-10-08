Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

  resources :pictures
  root "pictures#index"
end
