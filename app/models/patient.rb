class Patient < ApplicationRecord
  has_many :doctor_patients
end
