class AddHospitalRefsToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :hospital, foreign_key: true
  end
end
