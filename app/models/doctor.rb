class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    has_many :specialities, through: :speciality_of_doctors
    belongs_to :city
end
