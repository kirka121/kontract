Rails.application.routes.draw do
	resources :services

	devise_for :users

	devise_scope :user do
		get 'login' => 'devise/sessions#new'
		get 'register' => 'devise/registrations#new'
		delete 'logout' => 'devise/sessions#destroy'
	end

	root 'home#index'

	get '/admin', to: 'admin#index', as: 'admin'
	get '/contact', to: 'home#contact', as: 'contact'
	get '/sp', to: 'sp#index', as: 'sp'
	get '/sp/:id', to: 'sp#show', as: 'spid'
	
	namespace :admin do
		resources :subpages do
			get 'delete'
		end
		resources :subsections do
			get 'delete'
		end
		resources :settings do
			get 'edit_carousel'
		end
		resources :teams
		resources :services
	end
	
	mount Judge::Engine => '/judge'
	post '/tinymce_assets' => 'tinymce_assets#create'
	
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
