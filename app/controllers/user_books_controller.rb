class UserBooksController < ApplicationController

    def index
      userbooks = UserBook.all
      render json: UserBookSerializer.new(userbooks)
    end

    def show
      userbook = UserBook.find(params[:id])
      render json: UserBookSerializer.new(userbook)
    end

    def create
      userbook = UserBook.create(user_params)
      render json: UserSerializer.new(userbook)
    end

    def destroy
      userbook = UserBook.find_by(params[:id])
      userbook.delete
    end

    private 

    def userbook_params
        params.require(:userbook).permit(:user_id, :book_id, :shelves)
    end

end
