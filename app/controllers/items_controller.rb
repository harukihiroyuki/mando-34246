class ItemsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :destroy, :update, :create, :edit]
 # before_action :set_item, only: [:show, :update, :edit, :destroy]
 # before_action :redirect_item, only: [:edit, :update, :destroy]

 def index
  @items= Item.all
  @item= Item.includes(:user).order("created_at DESC")
 end

 def new
  @item = Item.new

 end


 def create
   @item = Item.new(item_params)
  if @item.save
    redirect_to root_path
  else
    render :new
  end
 end

 def show
  @item= Item.find(params[:id])
 end

 

 



  private

  

def item_params
    params.require(:item).permit(:image, :category_id, :item_condition_id, :country_id, :name, :text, :nation_id, :city).merge(user_id: current_user.id)
end

end
