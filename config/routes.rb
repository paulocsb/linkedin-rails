Rails.application.routes.draw do
  devise_for :users

  root 'linkedin#index'

  resources :linkedin
  match '/linkedin_profile', to: 'linkedin#linkedin_profile', via: [:get]
  match '/oauth_account', to: 'linkedin#oauth_account', via: [:get, :post]
  match '/linkedin_oauth_url', to: 'linkedin#generate_linkedin_oauth_url', via: [:get, :post]
end
