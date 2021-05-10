class AvailableCitiesController < ApplicationController
  def index
    @available_cities = Restaurant.all.map(&:city).uniq
  end
end
