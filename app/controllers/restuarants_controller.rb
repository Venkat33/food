class RestuarantsController < ApplicationController



  def new
    @restuarant = Restuarant.new
  end

  def create
  #render plain:params[:restuarant].inspect
    @restuarant = Restuarant.new(restuarant_params)
    @restuarant.save

    render :json => @restuarant
  end

  def show
  @restuarant = Restuarant.find(params[:id])
  render :json => @restuarant
  end

  def edit
    @restuarant = Restuarant.find(params[:id])
    render :json => @restuarant
  end

  def update
  @restuarant = Restuarant.find(params[:id])
   @restuarant.update(restuarant_params)
   render :json => @restuarant
  end


  def destroy
    @restuarant = Restuarant.find(params[:id])
    @restuarant.destroy
    render :json => { message: "restuarant delete successfullly" }
  end
  private
  def restuarant_params
    params.require(:restuarant).permit(:tittle,:address, :contact)
  end
  end
