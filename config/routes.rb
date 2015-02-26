Redforce::Application.routes.draw do
  devise_for :users #, only: [:index, :show, :edit, :list]

  namespace :dashboard do
    resources :items do
      get "xxxx" , :to => "items#index"
      member do
        get "item_history" , :to => 'items#item_history'
      end
      collection do
        get 'item_detail' , :controller => 'items' , :action => 'item_detail'
      end
    end
    root :to => "items#index"
  end

  resources :foods do
    get "list" => "foods#list"
    collection do
      get 'list' , :controller => 'foods' , :action => 'list'
    end
    root :to => "foods#index"
  end

  resources :groups do
    get "list" => "groups#list"
    
    collection do
      get 'list' , :controller => 'groups' , :action => 'addlist'
    end
    
    #member do
    #  get 'list' , :to => 'groups#list'
    #end
    root :to => "groups#index"
  end
  resources :journals do
    get 'list' => "journals#jlist"
    collection do
      get 'list' , :controller => 'journals' , :action => 'jlist'
    end
  end
  resources :problems do
    get 'list' => "problems#list"
    collection do
      get 'list' , :controller => 'problems' , :action => 'list'
    end
  end
  resources :profiles do
    get 'list' => "profiles#plist"
    collection do
      get 'list' , :controller => 'profiles' , :action => 'plist'
      get 'greeting' , :controller => 'profiles' , :action => 'greeting'
    end
    #root :to => "profiles#greeting"
  end

  resources :hello
  get "hello" => "hello#index"
  get "greeting" => "hello#greeting"
  get "portfolio" => "hello#portfolio"
  get "asp" => "hello#asp"
  get "asp_1" => "hello#asp_1"
  get "asp_2" => "hello#asp_2"
  get "asp_3" => "hello#asp_3"
  get "jsp" => "hello#jsp"
  get "jsp_1" => "hello#jsp_1"
  get "jsp_2" => "hello#jsp_2"
  get "jsp_3" => "hello#jsp_3"
  get "other" => "hello#other"
  get "mobile" => "hello#mobile"
  get "aboutme" => "hello#aboutme"
  #resources :groups , only: [:index, :show, :edit, :list, :new, :destroy, :update]
  #get "hello" => "hello#index"
  #get "greeting" => "hello#greeting"
  #get "grouplist" => "groups#addlist"
  #get "groups" => "groups#index"
  #get "foodlist" => "foods#list"
  root to: "hello#portfolio"

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
