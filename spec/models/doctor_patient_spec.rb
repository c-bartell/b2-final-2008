require 'rails_helper'

describe DoctorPatient do
  describe 'Relationships' do
    it { should belong_to :doctor }
    it { should belong_to :patient }
  end
end
