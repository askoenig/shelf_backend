class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :user_books
    has_many :books, through: :user_books
end
