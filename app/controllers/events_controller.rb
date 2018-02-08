class EventsController < ApplicationController
  
  def index
    @events = Event.all 
  end

  def new
    if logged_in?
      @event = Event.new
    else
      redirect_to login_path
    end
  end

  def show
    @events = Event.find(params[:id])
  end

  def edit
    @events = Event.find(params[:id])
  end

  def create
    @events = Event.create(events_params)
    @events.creator = current_user.email
    if @events.save
      log_in @events
      flash[:success] = "Voici ta page"
      redirect_to @events
    else 
      render 'new'
    end
  end

  def update
    @events = Event.find(params[:id])
    if @events.update(params.require(:events).permit(:location, :date, :name_event, :description))
       redirect_to @events
    else
      render 'new'
    end
  end

  def date_time_now
    @now = DateTime.now
  end

  def destroy
    @events = Event.find(params[:id])
    @events.destroy
    redirect_to events_path
  end
  
  private

  def events_params
      params.require(:event).permit(:location, :date, :name_event, :description, :event_id)
    end

end
