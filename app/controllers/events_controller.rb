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
    if @event.save
      flash[:notice] = 'Event was successfully created.'
    else
      flash.now[:error] = 'Could not create event.'
      render :new
    end
  end

  def edit
    @event = Event.find params[:id]
  end

  def update
    @event = Event.find params[:id]
    if @event.update(event_params)
      redirect_to event_path(@event.id)
    else
      redirect_to edit_event_path(@event.id)
    end
  end

  def destroy
    @event = Event.find params[:id]
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).params(:date, :location, :title, :description, :thumbnail, :album)
  end

end
