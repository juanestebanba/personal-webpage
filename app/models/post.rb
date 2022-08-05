class Post < ApplicationRecord
  belongs_to :user
  has_many :postelements
  has_rich_text :rich_content
end
