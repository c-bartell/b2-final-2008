require 'rails_helper'

describe 'Doctors Show Page' do
  before :each do

  end

  describe 'As a visitor' do
    before :each do
      @hospital = Hospital.create!(name: 'Grey Sloan Memorial Hospital')
      @doctor = @hospital.doctors.create!(name: 'Meredith Grey', specialty: 'General Surgery', university: 'Harvard University')
      @patient1 = @doctor.patients.create!(name: 'Katie Bryce', age: 24)
      @patient2 = @doctor.patients.create!(name: 'Denny Duquette', age: 39)
    end

    describe "When I visit a doctor's show page" do
      before :each do
        visit "/doctors/#{@doctor.id}"
      end

      it "I see all of that doctor's information" do
        expect(page).to have_content("Dr. #{@doctor.name}")

        within '#bio' do
          expect(page).to have_content("Specialty: #{@doctor.specialty}")
          expect(page).to have_content("Alma Mater: #{@doctor.university}")
        end
      end
    end
  end
end

# As a visitor
# When I visit a doctor's show page
# I see all of that doctor's information including:
#  - name
#  - specialty
#  - university where they got their doctorate
# And I see the name of the hospital where this doctor works
# And I see the names of all of the patients this doctor has
