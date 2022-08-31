class Company < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
