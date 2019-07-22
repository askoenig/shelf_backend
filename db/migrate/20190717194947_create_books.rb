class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :googleBookId
      t.string :title
      t.string :subtitle
      t.string :authors
      t.string :datePublished
      t.string :printedPageCount
      t.string :categories
      t.string :language
      t.string :image

      t.timestamps
    end
  end
end
