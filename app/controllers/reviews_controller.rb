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
  end


  private
  def review_params
    params.require(:review).permit(:username, :email, :ratinng ,:description, :user_id)
  end
  end
