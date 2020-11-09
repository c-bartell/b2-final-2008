require 'rails_helper'

describe Hospital do
  describe 'Relationships' do
    it { should have_many :doctors }
    it { should have_many(:patients).through(:doctors) }
  end

  describe 'Instance Methods' do
    before :each do
      @hospital = Hospital.create!(name: 'Grey Sloan Memorial Hospital')
      @doctor1 = @hospital.doctors.create!(name: 'Meredith Grey', specialty: 'General Surgery', university: 'Harvard University')
      @doctor2 = @hospital.doctors.create!(name: 'Alex Karev', specialty: 'Pediatric Surgery', university: 'Johns Hopkins University')
      @doctor3 = @hospital.doctors.create!(name: 'Miranda Bailey', specialty: 'General Surgery', university: 'Harvard University')
      @doctor4 = @hospital.doctors.create!(name: 'Derek McDreamy Shepherd', specialty: 'Attending Surgeon', university: 'University of Pennsylvania')
    end

    it '#number_doctors' do
      expect(@hospital.number_doctors).to eq(4)
    end

    it '#universities' do
      expected = [@doctor1.university, @doctor2.university, @doctor4.university]

      expect(@hospital.universities).to eq(expected)
    end
  end
end
