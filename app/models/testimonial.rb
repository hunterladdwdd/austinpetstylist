class Testimonial < ActiveRecord::Base
  validates_presence_of :body
  validates_presence_of :client
end