Thinktech::Application.routes.draw do

  devise_for :bloggers
  resources :articles

  mount Ckeditor::Engine => '/ckeditor'
  resources :users
  resources :searches

 
  
  root 'static_pages#index'
  
  match '/', to: 'static_pages#index', via: 'get'
  match '/delete', to: 'articles#delete_article', via: 'get'
  match '/service-web', to: 'static_pages#service_web', via: 'get', as: :service_web
  match '/service-app', to: 'static_pages#service_app', via: 'get', as: :service_app
  match '/service-seo', to: 'static_pages#service_seo', via: 'get', as: :service_seo
  match '/service-custom', to: 'static_pages#service_custom', via: 'get', as: :service_custom

  match '/3d-product-catalogue-app', to: 'static_pages#product_3dproduct', via: 'get', as: :product_3dproduct
  match '/appointment-scheduler-app', to: 'static_pages#product_appointment', via: 'get', as: :product_appointment
  match '/hr-industry-app', to: 'static_pages#product_hr_industry', via: 'get', as: :product_hr_industry
  match '/restaurant-app', to: 'static_pages#product_restaurant', via: 'get', as: :product_restaurant

  match '/cloud-platforms', to: 'static_pages#technology_cloud', via: 'get', as: :technology_cloud
  match '/web-cms', to: 'static_pages#technology_cms', via: 'get', as: :technology_cms
  match '/mobile', to: 'static_pages#technology_mobile', via: 'get', as: :technology_mobile
  match '/web-technologies', to: 'static_pages#technology_web', via: 'get', as: :technology_web


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
