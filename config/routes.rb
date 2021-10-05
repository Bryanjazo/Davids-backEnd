Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cryptos
      get '/Cryptos', to: 'cryptos#getCryptos', as: 'Cryptos'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
