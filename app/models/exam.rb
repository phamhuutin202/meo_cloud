class Exam < ApplicationRecord
  belongs_to :patient
  belongs_to :technician
  belongs_to :doctor
  belongs_to :eye_prescription
end
