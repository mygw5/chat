class MessagesController < ApplicationController

  def create
    group = Group.find(params[:group_id])
    message = group.messages.build(message_params)
    message.user_id = current = current_user.id
    message.save
    redirect_to group_path(group)
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end
end
