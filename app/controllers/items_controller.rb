class ItemsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :destroy, :update, :create, :edit]


 def index
  @items= Item.all
  @items= Item.includes(:user).order("created_at DESC")
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
 end

 def update
  if @item.update(item_params)
    redirect_to item_path
  else
    render :edit
  end
 end

 def edit
 end

 def destroy
  if @item.destroy
    redirect_to root_path
  else
    render :show
  end
 end



 private


def item_params
    params.require(:item).permit(:image, :category_id, :item_condition_id, :country_id, :name,:text).merge(user_id: current_user.id)
  end

end
