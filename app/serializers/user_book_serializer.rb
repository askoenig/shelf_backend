class UserBookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :googleBookId, :title, :shelves, :thoughts, :book 
end
