Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :scrapers
    end
  end
  namespace :api do
    namespace :v1 do
      resources :headlines
    end
  end
  namespace :api do
    namespace :v1 do
      resources :meet_teans
    end
  end
  namespace :api do
    namespace :v1 do
      resources :writers_feeds
    end
  end
  namespace :api do
    namespace :v1 do
      resources :learn_cryptos
    end
  end
  namespace :api do
    namespace :v1 do
      resources :blockchains
    end
  end
  namespace :api do
    namespace :v1 do
      resources :lifestyles
    end
  end
  namespace :api do
    namespace :v1 do
      resources :recents
    end
  end
  namespace :api do
    namespace :v1 do
      resources :cryptos
      get '/Cryptos', to: 'cryptos#getCryptos', as: 'Cryptos'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
