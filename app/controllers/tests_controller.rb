class TestsController < ApplicationController
  def map
    @events = Event.all.where.not(latitude: nil).select(:title, :latitude, :longitude)  # all rows, certain columns
  end
end
