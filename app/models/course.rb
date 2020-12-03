class Course < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :students, through: :reviews

  validates :course_name, :profesor_name,:course_length,:number_videos, presence: true, uniqueness: {scope: :user_id}
  validate :filter

def filter

  ar = ["fuck","worse"]
  ar.each do |t|
    errors.add(:comments, "Not allowed")
end
end