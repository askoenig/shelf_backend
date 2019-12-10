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

    def findcreate
      if Book.exists?(googleBookId: book_params[:googleBookId])
        foundBook = Book.find_by(googleBookId: book_params[:googleBookId])
        UserBook.create(book_id: foundBook.id, user_id: current_user.id, googleBookId: foundBook.googleBookId, title: foundBook.title, authors: foundBook.authors)
      else newBook = Book.create(book_params)
        UserBook.create(book_id: newBook.id, user_id: current_user.id, googleBookId: newBook.googleBookId, title: newBook.title, authors: newBook.authors)
      end
    end

    private 

    def book_params
        params.require(:book).permit(:googleBookId, :title, :subtitle, :authors, :datePublished, :printedPageCount, :categories, :language, :image, :description)
    end

end
