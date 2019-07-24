class RemoveShelvesFromUserBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_books, :shelves, :text
  end
end
