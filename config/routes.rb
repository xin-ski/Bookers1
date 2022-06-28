Rails.application.routes.draw do
  root 'homes#top'
  get 'books' => 'books#index'
  get 'show' => 'books#show'
  get 'edit' => 'books#edit'
  get 'destory' => 'books#destory'
  post 'books' => 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end