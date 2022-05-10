Rails.application.routes.draw do
  
  get '/', to: 'index#home'
  
  resources :gossips
  
  resources :users 
  
  resources :cities
  
    get 'welcome/:first_name', to: 'welcome#show'
    #Route contact
    get '/contact', to: 'index#contact'
  
    #Route team
    get '/team', to: 'index#team'
  
  
  
end
