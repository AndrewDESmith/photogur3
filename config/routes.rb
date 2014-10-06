Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.

 get "pictures" => "pictures#index"
 get "pictures/0" => "pictures#picture0"
 get "pictures/1" => "pictures#picture1"
 get "pictures/2" => "pictures#picture2"
end
