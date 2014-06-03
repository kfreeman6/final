class RecipesController < ApplicationController

  def create
    kat = User.find_by("username" => "kfreestyle")
    Recipe.create("recipe_name" => params["recipe_name"],
                "recipe_photo" => params["recipe_photo"],
                "recipe_URL" => params["recipe_URL"],
                "notes" => params["notes"],
                "star_rating" => params["star_rating"],
                "category_name" => params["category_name"],
                "recipe_added" => Date.today,
                "user_id" => kat["id"])

    redirect_to "/"
  end

  def update
    recipe = Recipe.find_by("id" => params["id"])
    recipe.update("recipe_name" => params["recipe_name"],
                "recipe_photo" => params["recipe_photo"],
                "recipe_URL" => params["recipe_URL"],
                "notes" => params["notes"],
                "star_rating" => params["star_rating"],
                "category_name" => params["category_name"])

    redirect_to "/"
  end

  def destroy
    recipe = Recipe.find_by("id" => params["id"])
    recipe.delete
    redirect_to "/"
  end

end
