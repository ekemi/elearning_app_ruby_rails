class Review < ApplicationRecord
  belongs_to :course
  belongs_to :student
  validates :ratings, :comments ,presence: true

  validate :filter

  def filter
  
    ar = ["fuck","worse"]
    ar.each do |t|
      errors.add(:comments, "Not")
  
end
