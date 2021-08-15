Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  post "posts/create" => "posts#create"
  get 'posts/:id/edit' => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get 'posts/show' => "posts#show"
  get '/' => "home#top"
  get "posts/:id" => "posts#show"


  delete "posts/:id/destroy" => "posts#destroy"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
