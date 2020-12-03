class Review < ApplicationRecord
  belongs_to :course
  belongs_to :student
  validates :ratings, :comments ,presence: true
end
