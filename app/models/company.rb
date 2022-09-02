class Company < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  has_many :applications, through: :offers

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  has_one_attached :photo
end
