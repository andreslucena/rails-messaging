Messaging::Engine.routes.draw do
  resources :conversations, :only => [:update]
  resources :messages do
    member do
      delete 'trash'
      post 'untrash'
      put :move
    end
    collection do
      put :move
    end
  end
  post 'search' => 'messages#search'
  root :to => 'messages#index'
end
