class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to message_path, notice: '非常谢谢您的宝贵留言!'
    else
      redirect_to message_path
    end
  end

  private
    def message_params
      #params.require(:message).permit(:name, :contact, :body)
      params.permit(:name, :contact, :body)
    end
end
