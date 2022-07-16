class Book < ApplicationRecord
  belongs_to :author
  has_rich_text :rich_notes
end
