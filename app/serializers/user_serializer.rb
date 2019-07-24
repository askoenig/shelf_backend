class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :user_books
end
