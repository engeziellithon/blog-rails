Rails.application.routes.draw do
    
  resources :categories
  get 'tags/:tags/:id', to: 'categories#show', as: :tag
  
  mount Ckeditor::Engine => '/ckeditor'
    devise_for :users, :controllers => { registrations: 'registrations' }
    
    resources :articles do
      resources :comments
    end
    
    root 'pages#index'
  
    get 'pages/contact'
  
    get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
