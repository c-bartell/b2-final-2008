# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Hospitals:
hospital1 = Hospital.create!(name: 'Grey Sloan Memorial Hospital')
hospital2 = Hospital.create!(name: 'Seaside Health & Wellness Center')

# Doctors:
doctor1 = hospital1.doctors.create!(name: 'Meredith Grey', specialty: 'General Surgery', university: 'Harvard University')
doctor2 = hospital1.doctors.create!(name: 'Alex Karev', specialty: 'Pediatric Surgery', university: 'Johns Hopkins University')
doctor3 = hospital1.doctors.create!(name: 'Miranda Bailey', specialty: 'General Surgery', university: 'Stanford University')
doctor4 = hospital1.doctors.create!(name: 'Derek McDreamy Shepherd', specialty: 'Attending Surgeon', university: 'University of Pennsylvania')
