Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/forecast', to: "forecast#show"
      get '/antipode', to: "antipode#show"
      get '/gifs', to: "gif#show"
    end
  end
end
