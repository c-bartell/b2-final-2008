class DoctorPatient < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
end
