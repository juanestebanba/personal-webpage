class Postelement < ApplicationRecord
  # belongs_to :post

  # validates :element_type, inclusion: { in: %i[paragraph image video-embed] }

  # has_rich_text :content
end
