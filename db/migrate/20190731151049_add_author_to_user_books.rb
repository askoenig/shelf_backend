class AddAuthorToUserBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :authors, :string
  end
end
