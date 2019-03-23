class ItemsController < ApplicationController

  def index
    @items = Item.order('created_at DESC').limit(4)
  end

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to new_item_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :name, 
      :text, 
      :price, 
      :l_category_id,
      :m_category_id, 
      :s_category_id, 
      :status,
      :shipping_cost, 
      :prefectures, 
      :ship_date,
      images_attributes: {image: []}
    )
  end
end
