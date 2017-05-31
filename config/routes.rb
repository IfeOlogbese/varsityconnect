Rails.application.routes.draw do
  
  resources :posts
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # custom user routes
  # Reference link --> https://blog.payload.tech/2016/03/18/custom-routes-and-views-with-devise/
  # --->  http://ricostacruz.com/cheatsheets/devise.html
  # --->  http://api.rubyonrails.org/classes/ActionDispatch/Routing.html
  as :user do
    get "/users" => 'users/sessions#index'
  end

  get 'home/front'
  
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
