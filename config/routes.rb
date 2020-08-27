Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes', to: 'recipes#index'
      get 'recipe', to: 'recipes#show'
      get 'tags', to: 'tags#index'
      get 'tag', to: 'tags#show'
      get 'search', to: 'recipes#search'
    end
  end
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
