class ItemsController < ApplicationController
  def index
    items = Item.all 
    render json: items.as_json(:include => [:owner])
  end

  def show
    item = Item.find(params[:id])
    render json: item.as_json(:include => [:owner])
  end 

  def create
    item = Item.create(item_params)
    render json: item, include: [:owner]
  end 

  private
  
  def item_params
    params.require(:item).permit(:owner_id,:name,:description,:img_url,:item_category, :status,:private)
  end 


end
