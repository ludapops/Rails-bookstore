class ReviewsController < ApplicationController
  def index
  	@book = Book.find params[:book_id]
  	@reviews = @book.reviews
  end

  def new 
  	@book = Book.find params[:book_id]
  	@review = @book.reviews.new
  end

  def create
  	@book = Book.find params[:book_id]
  	@review = @book.reviews.new entry_params

  	if @review.save
  		redirect_to action: 'index', controller: "reviews",
  		book_id: @book.id
  	else 
  		render 'new'
  	end

  end 

  private

  def entry_params
  	params.require(:review).permit(:review, :rating)
  end

end
