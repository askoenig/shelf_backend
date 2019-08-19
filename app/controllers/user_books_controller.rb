class UserBooksController < ApplicationController

    def index
      userbooks = UserBook.all
      render json: UserBookSerializer.new(userbooks)
    end

    def show
      userbook = UserBook.find(params[:id])
      render json: UserBookSerializer.new(userbook)
    end

    def update
      # debugger
      userbook = UserBook.find(params[:id])
      userbook.update(userbook_params)
      render json: UserBookSerializer.new(userbook)
    end

    # def create
    #   userbook = UserBook.create(userbook_params)
    #   debugger
    #   render json: UserSerializer.new(userbook)
    # end

    def destroy
      userbook = UserBook.find(params[:id])
      userbook.delete
    end

    private 

    def userbook_params
        params.permit(:user_id, :book_id, :thoughts, :googleBookId, :title, :authors, :shelves, shelves: [])
        # params.permit!
    end

end
