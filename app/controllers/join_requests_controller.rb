class JoinRequestsController < ApplicationController
  def index
    @outgoing_requests = JoinRequest.where(user: current_user) # bookings i made
    if current_user.events.any? # checking if user is host of events
      @my_events = current_user.events # returns collection of events
      @confirmed_requests = JoinRequest.where(event_id: @my_events.pluck(:id)).where(status: "accepted")
      @pending_requests = JoinRequest.where(event_id: @my_events.pluck(:id)).where(status: "pending")
    end
    # @pending_requests = Join.Request.where(event_id:...).where(status:"pending")
    @requests = JoinRequest.all
  end

  def new
    # we need @brain in our `simple_form_for`
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
