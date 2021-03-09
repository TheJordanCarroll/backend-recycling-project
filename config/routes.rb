Rails.application.routes.draw do

######### USER ITEM CATEGORY###############
  
get '/user_item_categories', to: 'user_item_categories#index'
get '/user_item_categories/new', to: 'user_item_categories#new', as: 'new_user_item_category'
post '/user_item_categories', to: 'user_item_categories#create'
get '/user_item_categories/:id', to: 'user_item_categories#show'
get '/user_item_categories/:id/edit', to: 'user_item_categories#edit', as: 'edit_user_item_category'
delete '/user_item_categories/:id', to: 'user_item_categories#destroy'
patch '/user_item_categories/:id', to: 'user_item_categories#update'

######### USER ITEMS ###############
  
get '/user_items', to: 'user_items#index'
get '/user_items/new', to: 'user_items#new', as: 'new_user_item'
post '/user_items', to: 'user_items#create'
get '/user_items/:id', to: 'user_items#show'
get '/user_items/:id/edit', to: 'user_items#edit', as: 'edit_user_item'
delete '/user_items/:id', to: 'user_items#destroy'
patch '/user_items/:id', to: 'user_items#update'

######### USER SITES ###############
  
get '/user_sites', to: 'user_sites#index'
get '/user_sites/new', to: 'user_sites#new', as: 'new_user_site'
post '/user_sites', to: 'user_sites#create'
get '/user_sites/:id', to: 'user_sites#show'
get '/user_sites/:id/edit', to: 'user_sites#edit', as: 'edit_user_site'
patch '/user_sites/:id', to: 'user_sites#update'
delete '/user_sites/:id', to: 'user_sites#destroy'

######### CATEGORIES ###############
  
get '/categories', to: 'categories#index'
get '/categories/new', to: 'categories#new', as: 'new_category'
post '/categories', to: 'categories#create'
get '/categories/:id', to: 'categories#show'
get '/categories/:id/edit', to: 'categories#edit', as: 'edit_category'
delete '/categories/:id', to: 'categories#destroy'
patch '/categories/:id', to: 'categories#update'

######### ITEM SITES ###############
  
get '/item_sites', to: 'item_sites#index'
get '/item_sites/new', to: 'item_sites#new', as: 'new_item_site'
post '/item_sites', to: 'item_sites#create'
get '/item_sites/:id', to: 'item_sites#show'
get '/item_sites/:id/edit', to: 'item_sites#edit', as: 'edit_item_site'
delete '/item_sites/:id', to: 'item_sites#destroy'
patch '/item_sites/:id', to: 'item_sites#update'

######### SITES ###############
  
get '/sites', to: 'sites#index'
get '/sites/new', to: 'sites#new', as: 'new_site'
post '/sites', to: 'sites#create'
get '/sites/:id', to: 'sites#show'
get '/sites/:id/edit', to: 'sites#edit', as: 'edit_site'
delete '/sites/:id', to: 'sites#destroy'
patch '/sites/:id', to: 'sites#update'
  
####### COMMENTS ############
 
get '/comments', to: 'comments#index'
get '/comments/new', to: 'comments#new', as: 'new_comment'
post '/comments', to: 'comments#create'
get '/comments/:id', to: 'comments#show'
get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
delete '/comments/:id', to: 'comments#destroy'
patch '/comments/:id', to: 'comments#update'
 
####### USERS ############

get '/users', to: 'users#index'
get '/users/new', to: 'users#new', as: 'new_user'
post '/users', to: 'users#create'
get '/users/:id', to: 'users#show'
get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
delete '/users/:id', to: 'users#destroy'
patch '/users/:id', to: 'users#update'

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
