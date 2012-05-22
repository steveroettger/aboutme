Aboutme::Application.routes.draw do
  devise_for :users

  root :to => 'pages#home'
  match '/auth/:provider/callback' => 'authentications#create'
end
