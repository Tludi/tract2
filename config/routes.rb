Tract2::Application.routes.draw do
  
  resources :takeoffs

  resources :accounts do
    resources :users
    resources :projects 
    resources :costbooks
  end

  # get "user_sessions/new"
  # get "user_sessions/create"
  # get "user_sessions/destroy"
  resources :user_sessions
  resources :users
  
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  
  # resources :dashboards

  resources :csi_divisions

  # resources :costbooks do
  #   resources :materials
  # end
  # resources :projects

  match 'dashboard' => "dashboard#index", :as => :dashboard
  match '/projects/:id/edit' => 'projects#edit', :via => :post

  root :to => "home#index"
end
 