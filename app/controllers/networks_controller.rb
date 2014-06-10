class NetworksController < ApplicationController

  def create

    existing_network = Network.find_by("network" => params["network"])

    if existing_network == nil
    Network.create("network" => params["network"])
    message = "That network has already been created. Please try a different name."
    redirect_to "'/users/#{the_user["id"]}'"
  else
    redirect_to "'/users/#{the_user["id"]}'"
  end
  end


end
