class Testimonial < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :body
  validates_presence_of :client

  def preview
    if self.body.size < 300
      self.body
    else
      self.body.first(300) + " ..."
    end
  end
end