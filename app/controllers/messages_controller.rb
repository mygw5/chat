class MessagesController < ApplicationController

  def create
    group = Group.find(params[:group_id])
    message = group.messages.build(message_params)
    message.user_id = current = current_user.id
    messsage.save
    redirect_back(fallback_location: root_path)
  end


  private

  def message_params
    params.require(:chat).permit(:content)
  end
end
