class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book=Book.new
		
	end

	def create

		@book = Book.new(params.require(:book).permit(:name,:description,:isbn))
		@book.save
		redirect_to book_path(@book)
	end

	def show
		@book=Book.find(params[:id])
		
	end
end
