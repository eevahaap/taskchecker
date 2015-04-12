class Schoolclass < ActiveRecord::Base

  has_many :students
  has_many :questions

end
