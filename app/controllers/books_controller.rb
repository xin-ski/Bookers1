class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated." #update　フラッシュメッセージ
      redirect_to  "/books/#{@book.id}"
    else
      render :edit
    end
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
      flash[:notice] = "Book was successfully created." #title, body追加時のフラッシュメッセージ
      redirect_to "/books/#{@book.id}" #show.html
    else
      render :index
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed." #データ削除時のフラッシュメッセージ
    redirect_to "/books"
  end

  private
  def book_params
      params.require(:book).permit(:title, :body)
  end
end