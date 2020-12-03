class User < ApplicationRecord
  has_many :courses
  has_many :students, through: :courses
  has_many :reviews, through: :students

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
