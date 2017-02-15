Rails.application.routes.draw do

root to: "photos#index"

devise_for :users

resources :photos do
end


end
