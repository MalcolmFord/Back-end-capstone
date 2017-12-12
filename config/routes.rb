Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users do
      resources :personal_posts 
      resources :personal_comments
    end
    
    resources :user_technologies
    resources :technologies do
      resources :technology_posts
    end
    resources :technology_post_comments
    

     post 'authenticate', to: 'authentication#authenticate'
end
