class Question < ActiveRecord::Base

  belongs_to :teacher
  belongs_to :schoolclass
  has_many :answers

end
