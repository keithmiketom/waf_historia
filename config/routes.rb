Historia::Application.routes.draw do
resources :articles, only: [:index, :show, :edit]

  resources :history_resources do
    resources :articles 
  
  end


  resources :blogs do
      collection do
        get :tag
      end
      resources :comments
  end


  resources :categories, :except => [:index, :show]
  resources :forums, :except => :index do
    resources :topics, :shallow => true, :except => :index do
      resources :posts, :shallow => true, :except => [:index, :show]
    end
    root :to => 'categories#index', :via => :get
  end

 resources :user_friendships

  resources :profiles

  devise_for :users

  resources :topics
  
  get 'articles/index'
  
  match 'artarticles' => 'articles#index'

  get 'tags/:tag', to: 'blogs#index', as: :tag
  
  get "site/about"

  get "site/contact"

  get "site/FAQ"

  get "site/links"

  get "site/team"
  
  get "site/index"
  
  get "profiles/show"
  
  match 'resources' => 'history_resources#index'
  
  
  match 'about' => 'site#about'

  match 'contact' => 'site#contact'
    
  match 'team' => 'site#team'
      
  match 'faq' => 'site#FAQ'
  
  
  match '/myprofile' => 'profiles#myprofile'

  
  
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
   root :to => 'site#index'

end
