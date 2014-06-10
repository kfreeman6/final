class SessionsController < ApplicationController

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["user_id"] = the_user["id"]
        redirect_to "/", :notice => "Welcome back!"
      else
        logger.debug "Hmmm."
        redirect_to "/login", :notice => "Unknown password."
      end
    else
      redirect_to "/login", :notice => "Unknown username."
    end
  end

def destroy
  session[:user_id] = nil
  redirect_to "/", :notice => "Logged out"
end


end

