class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def destory
  end

  def create
    book = Book.new(book_params)
    book.save
    # booksへリダイレクト
    redirect_to '/books'
  end

  private
  def book_params
      params.require(:book).permit(:title, :body)
  end
end
