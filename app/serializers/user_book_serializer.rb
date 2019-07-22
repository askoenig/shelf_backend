class UserBookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :book, :shelves
  belongs_to :user
  belongs_to :book
end
