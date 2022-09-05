class Message < ApplicationRecord
  belongs_to :chatrom
  belongs_to :user
end
