require 'rails_helper'

describe 'Doctors Show Page' do
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

      it "I see the name of the hospital where the doctor works and the names of all their patients" do
        within '#bio' do
          expect(page).to have_content("Hospital: #{@hospital.name}")
        end

        within '#patients' do
          expect(page).to have_content(@patient1.name)
          expect(page).to have_content(@patient2.name)
        end
      end
    end
  end
end

# And I see the name of the hospital where this doctor works
# And I see the names of all of the patients this doctor has
