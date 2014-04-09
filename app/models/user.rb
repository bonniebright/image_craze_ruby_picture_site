class User < ActiveRecord::Base
  has_secure_password #includes uniqueness and presence validation

  validates_uniqueness_of :email
  has_many :photos
end
