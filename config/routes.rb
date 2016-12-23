Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  namespace 'api' do
    scope :path => 'vi/' do
      resources :messages 
    end
  end

  resources :messages do
    resources :comments
  end

  root 'messages#index'
end