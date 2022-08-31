class Offer < ApplicationRecord
  
  belongs_to :company
  has_many :applications
end
