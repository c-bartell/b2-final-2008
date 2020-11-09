class HospitalsController < ApplicationController
  def show
    @hospital = Hospital.find(params[:hospital_id])
  end
end
