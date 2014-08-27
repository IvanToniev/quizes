Rails.application.routes.draw do

  get 'users', to: 'default_user#index'

  # devise_for :user
  devise_for :default_users

  get '/default_user/edit'
  get '/default_user/change_password'

  resources :default_user, except: [:create, :new]


  root to: "home#index"

  namespace :admin do
    resources :answers

    resources :users

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
