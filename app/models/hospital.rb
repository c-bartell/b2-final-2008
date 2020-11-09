class Hospital < ApplicationRecord
  has_many :doctors
  has_many :patients, through: :doctors

  def number_doctors
    self.doctors.count
  end

  def universities
    self.doctors.distinct.pluck(:university)
  end
end
