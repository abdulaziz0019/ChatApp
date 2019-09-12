class User < ApplicationRecord
  has_secure_password


  has_many :messages , dependent: :destroy

  validates :username , presence: true, length: {minimum:2,maximum:15},
  uniqueness: { case_sensetive: false }

end
