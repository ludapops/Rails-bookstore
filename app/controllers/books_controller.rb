class BooksController < ApplicationController
    def index
  	@books = Book.last_created_books(10)
  	if @books.empty? 
  		render 'no_projects_found'
  	end
  end
end
