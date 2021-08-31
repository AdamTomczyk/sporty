class JoinRequestsController < ApplicationController

  def index

    #@outgoing_requests = JoinRequest.where(user: current_user) # bookings i made
    #@pending_requests = JoinRequest.where(event_id: @my_events.pluck(:id)).where(status: "pending")


    events = Event.includes(:join_requests).where(join_requests: { user: current_user, status: "accepted" || "pending"}).or(Event.where(user: current_user)).order(start_time: :desc)
    sorted_events = events.partition do |event|
    DateTime.now < event.end_time
    end
    @review = Review.new


    @upcoming_events = sorted_events[0]
    @past_events = sorted_events[1]

    # @pending_requests = Join.Request.where(event_id:...).where(status:"pending")
    # @requests = JoinRequest.all
    #ALL EVENTS THAT WILL HAPPEN:

    # all accepted requests
    # @confirmed_requests = JoinRequest.where(user: current_user).where(status: "accepted")

    # all hosted events
    # @hosted_events = JoinRequest.where(event_id: @my_events.pluck(:id)).where(status: "accepted")

    # ORDER BY TIME
    # @upcoming_events.order(event_id: @upcoming_events.events.pluck(:start_time) :desc).last(6)
    # EVENT last 6

  end

  def new
    @event = Event.find(params[:event_id])
    @join_request = JoinRequest.new
  end

  def create
    @join_request = JoinRequest.new(join_request_params)
    @event = Event.find(params[:event_id])
    @join_request.event = @event
    @join_request.user = current_user
    @event.capacity -= 1
    @event.save
    @join_request.save
    redirect_to join_requests_path
  end

  def show
    @join_request = JoinRequest.find(params[:id])
    @join_request = JoinRequest.new
    @event = Event.find(params[:event_id])
    @join_request.user = current_user
    @join_request.event = @event
  end

  def accept
    @join_request = JoinRequest.find(params[:id])
    @join_request.accepted!
    @join_request.status = 1
    redirect_to join_requests_path
  end

  def reject
    @join_request = JoinRequest.find(params[:id])
    @join_request.rejected!
    @join_request.status = 2
    redirect_to join_requests_path
  end

  private

  def join_request_params
    params.require(:join_request).permit(:current_user, :user_id, :event_id, :skill_level)
  end

end
