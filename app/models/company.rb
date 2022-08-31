class Company < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
