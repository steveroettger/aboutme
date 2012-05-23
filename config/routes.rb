Aboutme::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}

  root :to => 'pages#home'
  
  resources :authentications
  match '/auth/:provider/callback' => 'authentications#create'
end
