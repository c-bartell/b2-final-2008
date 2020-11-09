class AddDoctorAndPatientRefsToDoctorPatients < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctor_patients, :doctor, foreign_key: true
    add_reference :doctor_patients, :patient, foreign_key: true
  end
end
