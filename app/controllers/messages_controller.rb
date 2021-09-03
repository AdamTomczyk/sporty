class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(@chatroom.event, { author_id: @message.user.id, partial: render_to_string(partial: "message", locals: { message: @message }) })
      redirect_to event_path(@chatroom.event, anchor: "message-#{@message.id}", coming_ajax: true)
    else
      render "events/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
