class BooksController < ApplicationController

    def index
        books = Book.all
        render json: BookSerializer.new(books)
    end

    def show
        book = Book.find(params[:id])
        render json: BookSerializer.new(book)
    end

    def create
      book = Book.create(book_params)
      render json: BookSerializer.new(book)
    end

    def destroy
      book = Book.find_by(params[:id])
      book.delete
    end

    private 

    def book_params
        params.require(:book).permit(:googleBookId, :title, :subtitle, :authors, :datePublished, :printedPageCount, :categories, :language, :image)
    end

end
