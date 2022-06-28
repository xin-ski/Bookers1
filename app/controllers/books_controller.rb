class BooksController < ApplicationController
  def index
    @book = Book.new
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destory
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  private
  def book_params
      params.require(:book).permit(:title, :body)
  end
end