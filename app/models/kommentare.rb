class Kommentare < ApplicationRecord
  belongs_to :post
  has_one :post
end
