class BooksController < ApplicationController
  before_action :find_book_id, :only => [:show,:edit,:update,:destroy]

	def index
		@books = Book.page(params[:page]).per(5)
	end

	def new
		@book=Book.new

		
	end

	def create
		@book = Book.new(params_permit)
		
		if @book.save
			@book.save
			redirect_to book_path(@book)
			flash[:notice] = "新增成功"
		else
		   render :action => :new
		end
	end

	def show
		
		
	end

	def edit
		
		
	end

	def update
	
		
	  if @book.update(params_permit)
		@book.update(params_permit)
		redirect_to book_path(@book)
		flash[:notice] = "更新成功"
	  else
	  	render :action => :edit
	  end

		
	end
	def destroy
	    

		@book.delete
		redirect_to books_path
		flash[:notice] = "刪除成功"

		
	end

	private
	def find_book_id
		@book = Book.find(params[:id])
		
	end

	def params_permit

		params.require(:book).permit(:name,:description,:上架日期,:isbn,:出版日期)
	end
end
