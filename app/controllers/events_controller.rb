class EventsController < ApplicationController

  before_action :check_if_logged_in
  helper_method :date_format

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
    if @event.users.exists?(@current_user.id)
      @comment = Comment.new
      @comment.event_id = @event.id
      @comment.user_id = @current_user.id
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create event_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @event.image = req["public_id"]
    end

    if @event.save
      flash[:notice] = 'Event was successfully created.'
      redirect_to event_path(@event.id)
    else
      flash.now[:error] = 'Could not create event.'
      render :new
    end
  end

  def edit
    @event = Event.find params[:id]
    return unless @event.admin == @current_user.id
  end

  def update
    @event = Event.find params[:id]
    return unless @event.admin == @current_user.id
    if @event.update(event_params)
      redirect_to event_path(@event.id)
    else
      redirect_to edit_event_path(@event.id)
    end
  end

  def destroy
    @event = Event.find params[:id]
    return unless @event.admin == @current_user.id
    @event.destroy
    redirect_to events_path
  end

  def joingroup
    @event = Event.find params[:id]
    @user = User.find @current_user.id
    @event.users << @user unless @event.users.exists?(@user.id)
  end

  private

  def date_format d
    d.strftime('%d. %b %Y')
  end

  def event_params
    params.require(:event).permit(:date, :location, :title, :description, :image, :album, :category_id, :admin, :user_id)
  end

end
