Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :user
    resources :user_technology
    resources :technology
    resources :technology_post
    resources :technology_post_comment
    resources :personal_post
    resources :personal_comment

     post 'authenticate', to: 'authentication#authenticate'
end
