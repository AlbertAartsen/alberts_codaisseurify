Rails.application.routes.draw do
root "artists#index"


resources :artists do
  resources :songs
end

resources :photos

namespace :api do
  resources :artists do
    resources :songs
  end
end

namespace :api do
  resources :photos
end


end
