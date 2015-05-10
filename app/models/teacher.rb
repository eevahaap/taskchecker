class Teacher < ActiveRecord::Base

  has_secure_password

  has_many :questions
  validates :password, format: { with: /(?=.*\d)(?=.*[A-Z])/, message: "must have at least one capital and one number" }
  validates_length_of :password, minimum: 4

  has_many :schoolclasses, through: :memberships

end
