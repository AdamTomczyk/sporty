class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @events = Event.where(category: params[:query])
    else
      @events = Event.all
      # the `geocoded` scope filters only events with coordinates (latitude & longitude)
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window: render_to_string(partial: "info_window", locals: { event: event })
        }
      end
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.availability = true

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    redirect_to events_path, notice: 'Event was successfully deleted.'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :category, :description, :location, :start_time, :end_time, :capacity,
                                   :skill_level)
  end
end
