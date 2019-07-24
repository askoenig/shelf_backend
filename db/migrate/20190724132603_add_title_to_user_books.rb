class AddTitleToUserBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :title, :string
  end
end
