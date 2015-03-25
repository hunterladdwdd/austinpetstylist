class User < ActiveRecord::Base
  has_many :testimonials
  
  has_secure_password validations: false
  
  validates_presence_of :username
  validates_presence_of :email
  validates_presence_of :password
end