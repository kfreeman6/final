class RecipesController < ApplicationController

  def create
    Recipe.create("recipe_name" => params["recipe_name"],
                "recipe_desc" => params["recipe_desc"],
                "recipe_photo" => params["recipe_photo"],
                "notes" => params["notes"],
                "recipe_added" => Date.today)

    redirect_to '/recipes/#{the_recipe["id"]}'
  end


  def update
    the_recipe = Recipe.find_by(params["id"])
    the_recipe.update("recipe_name" => params["recipe_name"],
                "recipe_desc" => params["recipe_desc"],
                "recipe_photo" => params["recipe_photo"],
                "notes" => params["notes"])

    redirect_to '/recipes/#{the_recipe["id"]}'
  end

end
