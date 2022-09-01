class Application < ApplicationRecord
  belongs_to :offer
  belongs_to :assistant

  has_one :company, through: :offer
end
