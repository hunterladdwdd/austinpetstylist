class PagesController < ApplicationController
  def home
    @testimonials = Testimonial.last(3)
    @business = Yelp.client.business('austin-pet-stylist-austin')
  end

  def services; end

  def about_us; end

  def vip_rewards; end

  def policies; end

  def resources; end

  def contact; end

  def search
    parameters = { term: params['Austin Pet Stylist'], limit: 16 }
    render json: Yelp.client.phone_search('5122004229')
  end
end