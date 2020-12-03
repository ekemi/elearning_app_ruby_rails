class Student < ApplicationRecord
    has_many :reviews
    has_many :courses, through: :reviews
    validates :student_name,:studentID,  presence: true
end
