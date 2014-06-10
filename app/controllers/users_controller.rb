class UsersController < ApplicationController

  def create

    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil

    User.create("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"],
                "email_address" => params["email_address"],
                "tagline" => params["tagline"],
                "network_id" => params["network_id"],
                "member_since" => Date.today)
    redirect_to "/login", :notice => "That username is taken. Please create another name."
  else
    redirect_to "/users/new"
  end
  end


  def update
    user = User.find_by(params["id"])
    user.update("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"],
                "email_address" => params["email_address"],
                "tagline" => params["tagline"],
                "network_id" => params["network_id"])

    redirect_to '/'
  end

end
