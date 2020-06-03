class FriendsController < ApplicationController
  def index
    friend = Friend.all 
    render json: friends 
  end

  
end
