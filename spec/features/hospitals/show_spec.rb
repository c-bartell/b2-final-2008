require 'rails_helper'

describe 'Hospital Show Page' do
  describe 'As a visitor' do
    before :each do
      @hospital = Hospital.create!(name: 'Grey Sloan Memorial Hospital')
      @doctor1 = @hospital.doctors.create!(name: 'Meredith Grey', specialty: 'General Surgery', university: 'Harvard University')
      @doctor2 = @hospital.doctors.create!(name: 'Alex Karev', specialty: 'Pediatric Surgery', university: 'Johns Hopkins University')
      @doctor3 = @hospital.doctors.create!(name: 'Miranda Bailey', specialty: 'General Surgery', university: 'Harvard University')
      @doctor4 = @hospital.doctors.create!(name: 'Derek McDreamy Shepherd', specialty: 'Attending Surgeon', university: 'University of Pennsylvania')
    end

    describe "When I visit a hospital's show page" do
      before :each do
        visit "/hospitals/#{@hospital.id}"
      end
      it "I see the hospitals name, the number of doctors working there, and a unique list of the universities of the doctors" do
        expect(page).to have_content(@hospital.name)

        within '#doctor-info' do
          expect(page).to have_content("#{@hospital.number_doctors} doctors on staff.")
        end

        within '#universities' do
          expect(page).to have_content(@doctor1.university)
          expect(page).to have_content(@doctor2.university)
          expect(page).to have_content(@doctor4.university)
        end
      end
    end
  end
end
