Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :phone_numbers, only: [] do
        collection do
          post 'random'
        end
      end
    end
  end
  
end
