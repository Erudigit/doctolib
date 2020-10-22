# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# patient_list = []
# doctor_list = []
#appointment_list = []


City.create!(title: "Berlin")
City.create!(title: "Londes")
City.create!(title: "Paris")
City.create!(title: "Pékin")

Speciality.create!(name: "Medecin")
Speciality.create!(name: "Ophtalmologue")
Speciality.create!(name: "Chirurgien")
Speciality.create!(name: "Dentiste")
Speciality.create!(name: "Neurologue")


5.times do |i|
    Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.find(rand(1..4)) )
    Doctor.create!(first_name: "Dr. #{Faker::Name.first_name}", last_name: Faker::Name.last_name, city: City.find(rand(1..4)))
    puts "Docteur créé"
end

10.times do |i|
    Appointment.create(doctor: Doctor.find(rand(1..5)), patient: Patient.find(rand(1..5)), date: Faker::Date.between(from: '2014-09-23', to: '2017-09-25'), city: City.find(rand(1..4)))
    SpecialityOfDoctor.create(doctor: Doctor.find(rand(1..5)), speciality: Speciality.find(rand(1..5)))
end


#     >d = Doctor.create
# >p = Patient.create
# >a = Appointment.create(doctor: d, patient: p)
# #=> je crée une instance de chaque objet

# >a.doctor
# #=> on devrait obtenir en retour le docteur "d" créé plus haut. Sinon c'est qu'on a fait une erreur

# >a.patient
# #=> on devrait obtenir en retour le patient "p" créé plus haut. Sinon c'est qu'on a fait une erreur

# >d.patients
# #=> on devrait obtenir en retour un array contenant le patient "p" créé plus haut. Sinon c'est qu'on a fait une erreur

# >p.doctors
# #=> on devrait obtenir en retour un array contenant le doctor "d" créé plus haut. Sinon c'est qu'on a fait une erreur