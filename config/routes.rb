Rails.application.routes.draw do

root to: "home#index"

devise_for :users
resources :users, :only => [:show]
post '/', to: 'home#show', as: 'show'

resources :photos do
  resources :tags
end

end
