class Student < ActiveRecord::Base

  has_many :answers
  belongs_to :schoolclass

end
