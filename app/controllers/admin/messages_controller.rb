class Admin::MessagesController < Admin::BaseController
  before_action :set_message, only: [:show, :destroy]

  def index
    @messages = Message.page(params[:page]).per_page(16).order(created_at: :desc)
  end

  def show
  end

  def destroy
    @message.destroy
    redirect_to admin_messages_url, notice: '留言删除成功'
  end

  private
    def set_message
      @message = Message.find(params[:id])
    end
end
