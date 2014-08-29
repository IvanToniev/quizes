Rails.application.routes.draw do
  get 'questions/show'

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

  resources :answers
  resources :quiz, :only => [:index] do

    member do
      get :show
      get :welcome
      get :goodbye
      get :statistics
      resources :questions do
        get :solve
      end
    end

  end
end
