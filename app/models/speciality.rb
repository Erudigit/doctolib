class Speciality < ApplicationRecord
    has_many :doctors, through: :speciality_of_doctors
end
