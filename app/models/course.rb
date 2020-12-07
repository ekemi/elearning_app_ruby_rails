class Course < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :students, through: :reviews

  validates :course_name, :profesor_name,:course_length,:number_videos, presence: true, uniqueness: {scope: :user_id}
  
  scope :beta,->{order('LOWER(course_name)')} 
  def self.search (course_name)
      Course.where("course_name LIKE ?", "%#{course_name}%").beta
  
  end 
end