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
    @item.save
    
    binding.pry
    
    redirect_to new_item_path
  end

  def search
    if params[:l_cat]
      @m_cat = Category.find(params[:l_cat]).children
    else
      @s_cat = Category.find(params[:m_cat]).children
    end

    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :name, 
      :text, 
      :price, 
      :category_id, 
      :status,
      :shipping_cost, 
      :prefectures, 
      :ship_date,
      images_attributes: {image: []}
    )
  end
end
