class ItemsController < ApplicationController
 before_action :authenticate_user!, only: [:new, :destroy, :update, :create, :edit]


 def index
 end

 def new
  @item = Item.new
 end


end
