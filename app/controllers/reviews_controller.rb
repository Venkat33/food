class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
  #render plain:params[:review].inspect
    @review = Review.new(review_params)
    if @review.save
      flash[:notice]= "welcome"
      redirect_to review_path(@review)
    else
      render 'new'
    end
  end

  def show
  @review = Review.find(params[:id])
  render :json => @review
  end

  def edit
    @review = Review.find(params[:id])
    render :json =>@review
  end

  def update
      @review = Review.find(params[:id])
      @review.update
      render :json => @review

  end

  def destroy
  @review = Review.find(params[:id])
  @review.destroy
  render :json => { message: "successfullly deleted"}
  end

  private
  def review_params
    params.require(:review).permit(:username, :email, :ratinng ,:description, :user_id)
  end
  end
