class Assistant < ApplicationRecord
  SKILLS = ["Organization Skills", "Problem Solving Skills", "Flexibility", "Communication Skills", "Creativity", "Responsibility", "Computer proficiency", "Customer service", "Research Skills", "Computer Software and Application Knowledge", "Marketing", "Content creation", "Administrative", "Writing and editing Skills", "Languages", "Design"]
  AVAILABILITY = ["Any", "Part-time", "Full-time"]

  belongs_to :user
  has_many :applications
  validates :skills, inclusion: { in: SKILLS }
  validates :availability, inclusion: { in: AVAILABILITY }

  # validates :cv, presence: true
  # has_one_attached :cv
  # validate :correct_cv_mime_type

  # private

  # def correct_cv_mime_type
  #   if cv.attached? && !cv.content_type.in?(%w[application/msword application/pdf])
  #     errors.add(:cv, 'Must be a PDF or a DOC file')
  #   end
  # end
end
