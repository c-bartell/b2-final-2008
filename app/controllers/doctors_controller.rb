class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:doctor_id])
  end
end
