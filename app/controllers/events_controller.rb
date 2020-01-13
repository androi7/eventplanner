class EventsController < ApplicationController

  before_action :check_if_logged_in

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create event_params
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def event_params
    params.require(:event).params(:date, :location, :title, :description, :thumbnail, :album)
  end

end
