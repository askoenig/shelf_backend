class ChangeShelvesToString < ActiveRecord::Migration[5.2]
  def change
    change_column :user_books, :shelves, :string
  end
end
