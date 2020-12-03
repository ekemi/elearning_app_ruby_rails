class Course < ApplicationRecord
  belongs_to :user


  validates :course_name, :profesor_name,:length,:number_videos, presence: true,uniqueness: {scope: :user_id}
end
