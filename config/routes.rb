Final::Application.routes.draw do

# Homepage

 get  "/" => "recipes/index"

get "/rankall" => "recipes/list_all"

get "/mykitchen" => "users/show"


  # Sign-In and Sign-Out

  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  get "/logout" => 'sessions#destroy'

  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'



# Resource: Recipes

  # --- Create
  get "/recipes/new" => 'recipes#new'
  post "/recipes" => 'recipes#create'

  # --- Read
  get "/recipes" => "recipes#index"
  get "/recipes/:id" => 'recipes#show'

  # -- Update
  get "/recipes/:id/edit" => 'recipes#edit'
  patch "/recipes/:id" => 'recipes#update'

  # --- Delete
  delete "/recipes/:id" => 'recipes#destroy'



  # Resource: Networks

  # --- Create
  get "/networks/new" => 'networks#new'
  post "/networks" => 'networks#create'

  # --- Read
  get "/networks" => 'networks#index'
  get "/networks/:id" => 'networks#show'

  # -- Update
  get "/networks/:id/edit" => 'networks#edit'
  patch "/networks/:id" => 'networks#update'

  # --- Delete
  delete "/networks/:id" => 'networks#destroy'


 # Resource: Comments

  # --- Create
  get "/comments/new" => 'comments#new'
  post "/comments" => 'comments#create'

  # --- Read
  get "/comments" => 'comments#index'
  get "/comments/:id" => 'comments#show'

  # -- Update
  get "/comments/:id/edit" => 'comments#edit'
  patch "/comments/:id" => 'comments#update'

  # --- Delete
  delete "/comments/:id" => 'comments#destroy'


end
