class Element < ApplicationRecord
  belongs_to :book

  validates :element_type, inclusion: { in: %i[paragraph image video-embed] }

  has_rich_text :notes
end
