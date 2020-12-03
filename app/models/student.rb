class Student < ApplicationRecord
    validates :student_name,:studentID,  presence: true
end
