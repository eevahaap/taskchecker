class Schoolclass < ActiveRecord::Base

  has_many :students
  has_many :questions

  has_many :teachers, through: :memberships

end
