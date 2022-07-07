class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def index
    @books = Book.all
  end
  
  def create
    @book = Book.new(book_params)
    @book_id = current_user.id
    @book.save
    redirect_to '/books'
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  private
  # ストロングパラメータ
  def book_params
    params.permit(:title, :body)
  end
  
end
