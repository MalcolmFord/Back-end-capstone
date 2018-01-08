Rails.application.routes.draw do
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users do
      resources :personal_posts 
      resources :personal_comments
    end
    
    resources :user_technologies
    resources :technologies do
      resources :technology_posts
      resources :messageboards
    end
    resources :technology_post_comments
    resources :upcoming_events
    resources :attending_events
    

     post 'authenticate', to: 'authentication#authenticate'
end
