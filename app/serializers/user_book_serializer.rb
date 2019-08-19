class UserBookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :googleBookId, :title, :authors, :shelves, :thoughts, :book 
end
