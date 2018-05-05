class FooditemsController < ApplicationController
  def new
    @fooditem = Fooditem.new
  end

  def create
  #render plain:params[:fooditem].inspect
    @fooditem = Fooditem.new(fooditem_params)
    if @fooditem.save
      flash[:notice]= "welcome"
      redirect_to fooditem_path(@fooditem)
    else
    render :json => @fooditem
    end
  end

  def show
  @fooditem = Fooditem.find(params[:id])
  end


  private
  def fooditem_params
    params.require(:fooditem).permit(:itemname, :description, :user_id ,:image_file_name)
  end
  end
