Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :events

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    delete 'logout', to: 'devise/sessions#destroy'
  end

  devise_scope :user do
    get 'signup', to: "devise/registrations#new", as: "new_user_registration"
  end

  devise_for :users


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
