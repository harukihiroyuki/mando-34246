class ItemsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :destroy, :update, :create, :edit, :show]
 
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
   @comment = current_user.comments.new
   @item= Item.find(params[:id])
   @comments = @item.comments.includes(:user)
  end

 

 



  private

  

  

def item_params
    params.require(:item).permit(:image, :category_id, :item_condition_id, :country_id, :name, :text, :nation_id, :city).merge(user_id: current_user.id)
end

end
