class AddGoogleBooksIdToUserbooks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :googleBookId, :string
  end
end
