class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]


  def index
    all_events = Event.all
    all_sorted_events = all_events.partition do |event|
      DateTime.now < event.end_time
    end

    @all_upcoming_events = all_sorted_events[0]
    @all_past_events = all_sorted_events[1]
    if params[:query].present?
      @events = @all_upcoming_events.select {|event| event.category == params[:query]}
      @markers = @events.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window: render_to_string(partial: "info_window", locals: { event: event }),
          image_url: helpers.asset_url("#{event.category}_icon.png")
        }
      end
    else
      @events = @all_upcoming_events
      @markers = @events.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window: render_to_string(partial: "info_window", locals: { event: event }),
          image_url: helpers.asset_url("#{event.category}_icon.png")
        }
      end
      # the `geocoded` scope filters only events with coordinates (latitude & longitude)
    end
  end

  def show
    @event = Event.find(params[:id])
    @chatroom = @event.chatroom
    @message = Message.new
    @location = @event.location
    @comaIndex = 0
    @formatedLocation = []

    for i in 0..@location.length do
      if @location[i] == ","
        @comaIndex = i
      end
    end

    for i in 0..@comaIndex-1 do
        @formatedLocation.push(@location[i])
    end
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
