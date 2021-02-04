# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
DoctorSpecialty.destroy_all

10.times do
  City.create(
    city: Faker::Address.city
  )
end

puts "10 villes créées"

10.times do
  Specialty.create(
    specialty: ["généraliste", "chirurgien", "anesthésiste", "proctologue", "urologue", "gynecologue", "anusologue"].sample
  )
end

puts "10 spécialité créées"

5.times do
  Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Number.number(digits: 5),
    city_id: City.all.sample.id
  )
end 

puts "5 docteurs créés"

5.times do
  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.sample.id
  )
end

puts "5 patients créés"

10.times do
  Appointment.create(
    doctor_id: Doctor.all.sample.id,
    patient_id: Patient.all.sample.id,
    city_id: City.all.sample.id
  )
end

puts "10 appointment créés"

20.times do
  DoctorSpecialty.create(
    doctor_id: Doctor.all.sample.id,
    specialty_id: Specialty.all.sample.id
  )
end

puts "10 Doctor Specialty créés"


