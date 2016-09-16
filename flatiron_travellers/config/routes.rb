Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :travellers
      resources :cities
    end
  end
end
