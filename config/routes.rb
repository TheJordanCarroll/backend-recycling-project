Rails.application.routes.draw do
  # get 'user_item_categories/index'
  # get 'user_item_categories/new'
  # get 'user_item_categories/create'
  # get 'user_item_categories/show'
  # get 'user_item_categories/edit'
  # get 'user_item_categories/update'
  # get 'user_item_categories/destroy'




  # get 'user_items/index'
  # get 'user_items/new'
  # get 'user_items/create'
  # get 'user_items/show'
  # get 'user_items/edit'
  # get 'user_items/update'
  # get 'user_items/destroy'




  # get 'fav_sites/index'
  # get 'fav_sites/new'
  # get 'fav_sites/create'
  # get 'fav_sites/show'
  # get 'fav_sites/edit'
  # get 'fav_sites/update'
  # get 'fav_sites/destroy'





  # get 'categories/index'
  # get 'categories/new'
  # get 'categories/create'
  # get 'categories/show'
  # get 'categories/edit'
  # get 'categories/update'
  # get 'categories/destroy'




  # get 'item_sites/index'
  # get 'item_sites/new'
  # get 'item_sites/create'
  # get 'item_sites/show'
  # get 'item_sites/edit'
  # get 'item_sites/update'
  # get 'item_sites/destroy'




  # get 'sites/index'
  # get 'sites/new'
  # get 'sites/create'
  # get 'sites/show'
  # get 'sites/edit'
  # get 'sites/update'
  # get 'sites/destroy'
  ######### SITES ###############
  
  get '/sites', to: 'sites#index'
  # get '/sites/new', to: 'sites#new', as: 'new_site'
  # post '/sites', to: 'sites#create'
  # get '/sites/:id', to: 'sites#show', as: 'tag'
  # get '/sites/:id/edit', to: 'sites#edit', as: 'edit_site'
  # delete '/sites/:id', to: 'sites#destroy'
  # patch '/sites/:id', to: 'sites#update'
  
  
  
  # get 'comments/index'
  # get 'comments/new'
  # get 'comments/create'
  # get 'comments/show'
  # get 'comments/edit'
  # get 'comments/update'
  # get 'comments/destroy'
  
  
  
  
  get '/users', to: 'users#index'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
