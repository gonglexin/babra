class MessagesController < ApplicationController

  def create
    #TODO：model
    @message = Message.new(message_params)

    if @message.save
      redirect_to @message, notice: '留言创建成功.'
    else
      render action: 'new'
    end
  end

  private
  #TODO: params
    def message_params
      params.require(:message).permit(:name, :description, :category_id, :image, :image_cache)
    end
end
