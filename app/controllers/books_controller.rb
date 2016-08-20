class BooksController < ApplicationController
	def index
		@books = Book.page(params[:page]).per(5)
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

	def edit
		@book = Book.find(params[:id])

		
	end

	def update
		@book = Book.new(params.require(:book).permit(:name,:description,:isbn))
		@book.save
		redirect_to book_path(@book)
		
	end
	def destroy
		@book = Book.find(params[:id])
		@book.delete
		redirect_to books_path

		
	end
end
