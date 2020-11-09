class DoctorPatientsController < ApplicationController
  def destroy
    doctor_patient = DoctorPatient.find_by!(patient_id: params[:patient_id], doctor_id: params[:doctor_id])
    doctor_patient.destroy
    redirect_to "/doctors/#{params[:doctor_id]}"
  end
end
