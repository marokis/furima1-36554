class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:name :price :user :detail :category_id :status_id :charge_id :datetime_id :prefecture_id)
    
end
