class RecipesController < ApplicationController

  def create
    Recipe.create("recipe_name" => params["recipe_name"],
                "recipe_photo" => params["recipe_photo"],
                "recipe_URL" => params["recipe_URL"],
                "notes" => params["notes"],
                "star_rating" => params["star_rating"],
                "category_name" => params["category_name"],
                "recipe_added" => Date.today)

    redirect_to "/users/show"
  end

  def update
    the_recipe = Recipe.find_by(params["id"])
    the_recipe.update("recipe_name" => params["recipe_name"],
                "recipe_photo" => params["recipe_photo"],
                "recipe_URL" => params["recipe_URL"],
                "notes" => params["notes"],
                "star_rating" => params["star_rating"],
                "category_name" => params["category_name"])

    redirect_to "/recipes/#{the_recipe["id"]}"
  end

  def destroy
    recipe = Recipe.find_by("id" => params["id"])
    recipe.delete
    redirect_to "/users/show"
  end

end
