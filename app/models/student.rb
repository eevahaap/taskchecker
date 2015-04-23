class Student < ActiveRecord::Base

  has_secure_password

  has_many :answers
  belongs_to :schoolclass
  validates :password, format: { with: /(?=.*\d)(?=.*[A-Z])/, message: "must have at least one capital and one number" }
  validates_length_of :password, minimum: 4

end
