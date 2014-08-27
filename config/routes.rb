Rails.application.routes.draw do

  get 'users', to: 'default_user#index'

  devise_for :default_users
  match '/users/' => 'default_user#destroy', :via => :delete

  resources :default_users

  root to: "home#index"

  namespace :admin do
    resources :answers

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


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
