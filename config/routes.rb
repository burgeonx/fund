Rails.application.routes.draw do
  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'edit', sign_up: 'register'},
             controllers: {registrations: 'registrations'}

  root "pages#home"
  
  get 'dashboard' => 'dashboards#index'
  
  get 'about' , to: 'pages#about'
  
  get 'blog' , to: 'pages#blog'
  
  get 'careers' , to: 'pages#careers'
  
  get 'client-stories' , to: 'pages#client_stories'
  
  get 'faq' , to: 'pages#faq'

  get 'how-it-works' , to: 'pages#how_it_works'
  
  get 'invoice-factoring' , to: 'pages#invoice_factoring'
  
  get 'line-of-credit' , to: 'pages#line_of_credit'
  
  get 'partner' , to: 'pages#partner'
  
  get 'press' , to: 'pages#press'

  get 'pricing' , to: 'pages#pricing'

  get 'privacy' , to: 'pages#privacy'
  
  get 'support' , to: 'pages#support'

  get 'terms' , to: 'pages#terms'

  resources :companies, except: [:edit] do
    member do
      get 'funding'
      get 'info'
      get 'contact'
    end
  end
  
  resources :users, only: [:index, :show] do
    member do
      post '/verify_phone_number' => 'users#verify_phone_number'
      patch '/update_phone_number' => 'users#update_phone_number'
    end
  end
end
