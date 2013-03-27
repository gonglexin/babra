class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to message_path, notice: '非常谢谢您的宝贵留言!'
    else
      render 'new'
    end
  end

  private
    def message_params
      params.permit(:name, :contact, :body)
    end
end
