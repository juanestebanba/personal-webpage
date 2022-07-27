class Book < ApplicationRecord
  belongs_to :author
  belongs_to :user
  has_many :elements
  has_rich_text :rich_notes

end
