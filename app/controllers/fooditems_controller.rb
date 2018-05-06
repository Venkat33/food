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
def edit
  @fooditem = Fooditem.find(params[:id])
  render :json =>@fooditem
end

def update
    @fooditem = Fooditem.find(params[:id])
    @fooditem.update
    render :json =>@fooditem

end
  def show
  @fooditem = Fooditem.find(params[:id])
    render :json => @fooditem
  end

def destroy
@fooditem = Fooditem.find(params[:id])
@fooditem.destroy
render :json => { message: "successfullly deleted"}
end
  private
  def fooditem_params
    params.require(:fooditem).permit(:itemname, :description, :user_id ,:image_file_name)
  end
  end
