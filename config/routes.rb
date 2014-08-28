Rails.application.routes.draw do
  root to: "home#index"


  get 'users', to: 'users#index'
  devise_for :users

  get '/users/edit_admin'
  get '/users/change_password'
  match '/users_change_password/' => 'users#change_password', :via => :patch
  match '/users_delete/' => 'users#destroy', :via => :delete

  resources :users

  namespace :admin do
    resources :answers

    #resources :users

    resources :quizzes do
      collection do
      end

      member do
        get :add_questions
        patch :do_add_questions

        get :order_questions
        patch :order_questions

        patch :move_to_top
        patch :move_to_bottom
        patch :move_up
        patch :move_down
      end
    end
    resources :questions
  end

  resources :quiz, :only => [:index] do
    member do
      get :show
      get :welcome
      get :index
      get :goodbye
      get :statistics
    end
  end
end
