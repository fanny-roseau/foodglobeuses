Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  scope '(:locale)', locale: /fr|en/ do

  devise_for :users

  root to: 'pages#home'

  get 'about', to: 'pages#about'

  resources :contacts, only: [:new, :create]

  resources :articles, only: [:index]

  resources :restaurants do
    resources :reviews, only: [:create]
    resources :articles, only: [:show]
    collection do
      get 'mood',  to: "restaurants#mood"
      get 'amsterdam', to: "restaurants#amsterdam"
      get 'barcelone', to: "restaurants#barcelone"
      get 'berlin', to: "restaurants#berlin"
      get 'cap-ferret', to: "restaurants#cap_ferret"
      get 'hanoi', to: "restaurants#hanoi"
      get 'jerusalem', to: "restaurants#jerusalem"
      get 'lisbonne', to: "restaurants#lisbonne"
      get 'londres', to: "restaurants#londres"
      get 'los-angeles', to: "restaurants#los_angeles"
      get 'marrakech', to: "restaurants#marrakech"
      get 'montreal', to: "restaurants#montreal"
      get 'new-york', to: "restaurants#new_york"
      get 'paris', to: "restaurants#paris"
      get 'piana', to: "restaurants#piana"
      get 'tel-aviv', to: "restaurants#tel_aviv"
      get 'san-francisco', to: "restaurants#san_francisco"
    end

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
