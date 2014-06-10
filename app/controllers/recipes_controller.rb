class RecipesController < ApplicationController

  def create
    user = User.find_by("id" => cookies["user_id"])
    Recipe.create("recipe_name" => params["recipe_name"],
                "recipe_photo" => params["recipe_photo"],
                "recipe_URL" => params["recipe_URL"],
                "notes" => params["notes"],
                "star_rating" => params["star_rating"],
                "category_name" => params["category_name"],
                "recipe_added" => Date.today,
                "user_id" => cookies["user_id"])
    redirect_to "/users/#{user["id"]}"
  end

  def update
    recipe = Recipe.find_by("id" => params["id"])
    user = User.find_by("id" => cookies["user_id"])
    recipe.update("recipe_name" => params["recipe_name"],
                "recipe_photo" => params["recipe_photo"],
                "recipe_URL" => params["recipe_URL"],
                "notes" => params["notes"],
                "star_rating" => params["star_rating"],
                "category_name" => params["category_name"])

    redirect_to "/users/#{user["id"]}"

  end

  def destroy
    recipe = Recipe.find_by("id" => params["id"])
    user = User.find_by("id" => cookies["user_id"])
    recipe.delete
    redirect_to "/users/#{user["id"]}"
  end

end
