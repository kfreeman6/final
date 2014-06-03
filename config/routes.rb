Final::Application.routes.draw do

get "/" => "users/show"


 ## get  "/" => "recipes/index"  <<CHANGE BACK LATER!! CHANGED FOR HOMEWORK

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


# Resource: Kitchens


# -- Read -- HOW DO YOU LINK TO THE SIGNED-IN ID??
get "/mykitchen" => "kitchens#home"



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


end
