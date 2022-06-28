Rails.application.routes.draw do
  root 'homes#top'
  get 'books' => 'books#index'
  get 'show' => 'books#show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  get 'destroy' => 'books#destory'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end