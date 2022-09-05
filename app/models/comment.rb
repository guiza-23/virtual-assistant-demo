class Comment < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 20, maximum: 100 }
end
