class CommentsController < ApplicationController

  def create
    Comment.create("recipe_id" => params["recipe_id"],
                  "comment" => params["comment"])

    redirect_to "/recipes/#{params["recipe_id"]}", :notice => "Thank you for your comments!"

  end


end
