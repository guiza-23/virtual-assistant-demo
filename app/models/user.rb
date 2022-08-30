class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  TYPES = ["Company", "Assistant"]

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :reviews
  has_one :company
  has_one :user

  validates :type_of_user, inclusion: { in: ["Company", "Assistant"] }
  # validates :username, uniqueness: { scope: :username, message: "username already taken" }
  validates :email, uniqueness: { scope: :email, message: "email already has an account" }
  # validates :avatar, presence: true
  # has_one_attached :avatar
end
