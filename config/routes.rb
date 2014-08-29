Rails.application.routes.draw do
  root to: "quiz#index"

  devise_for :users, controllers: { sessions: "devise/users/sessions" }

  namespace :admin do
    resources :users do
      member do
        get :edit_admin
        get :change_password
      end
    end

    resources :quizzes do
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
  end # admin

  resources :quiz, :only => [:index, :show] do
    resources :questions, only: [:show] do
      resources :answers
      get :solve
    end

    member do
      get :welcome
      get :goodbye
      get :statistics
    end
  end # quiz forntend

end
