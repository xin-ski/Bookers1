Rails.application.routes.draw do
  root 'homes#top'
  get 'books' => 'books#index'
  get 'show' => 'books#show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  get 'destroy' => 'books#destroy'
  post 'books' => 'books#create'
  post 'books/:id' => 'books#show'
  get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update', as: 'update_list'
  delete 'books/:id' => 'books#destroy', as: 'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end