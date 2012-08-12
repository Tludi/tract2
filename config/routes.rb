Tract2::Application.routes.draw do
  
  # resources :dashboards

  resources :csi_divisions

  resources :costbooks do
    resources :materials
  end
  resources :projects

  get "dashboard/index"
  match '/projects/:id/edit' => 'projects#edit', :via => :post

  root :to => "home#index"
end
 