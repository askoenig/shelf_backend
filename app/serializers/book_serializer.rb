class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :googleBookId, :title, :subtitle, :authors, :datePublished, :printedPageCount, :categories, :language, :image
end
