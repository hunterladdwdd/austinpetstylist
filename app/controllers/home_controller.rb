class HomeController < ApplicationController
  def search
    parameters = { term: params['Austin Pet Stylist'], limit: 16 }
    render json: Yelp.client.search('Austin', parameters)
end