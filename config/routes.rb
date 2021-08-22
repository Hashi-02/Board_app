Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  post "posts/create" => "posts#create"
  get 'posts/:id/edit' => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get 'posts/show' => "posts#show"
  get '/' => "home#top"
  get "posts/:id" => "posts#show"

  get "signup" => "users#new"
  post "users/create" => "users#create"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" =>"users#logout"



  delete "posts/:id/destroy" => "posts#destroy"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
