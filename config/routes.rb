Rails.application.routes.draw do

root to: "home#index"

devise_for :users
resources :users, :only => [:show]
post '/', to: 'home#search', as: 'search'

resources :photos do
  resources :tags
end

end
