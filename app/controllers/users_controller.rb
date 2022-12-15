class UsersController < ApplicationController

  def index 
    items = Item.all
    render json: items
  end

    def show
      user = User.find(params[:id])
      items = user.items
      render json: user, include: :items
    end

end
