class UsersController < ApplicationController

  def create

    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil

    User.create("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"],
                "email_address" => params["email_address"],
                "tagline" => params["tagline"],
                "member_since" => Date.today)
    message = "That username is taken. Please create another name."
    redirect_to "/movies"
  else
    redirect_to "/user/new"
  end
  end


  def update
    the_user = User.find_by(params["id"])
    the_user.update("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"],
                "email_address" => params["email_address"],
                "tagline" => params["tagline"])

    redirect_to '/users/#{the_user["id"]}'
  end

end
