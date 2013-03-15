class Admin::TopicsController < Admin::BaseController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.page(params[:page]).per_page(16).order('created_at DESC')
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def edit
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to admin_topic_path(@topic), notice: '新闻创建成功.'
    else
      render action: 'new'
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to admin_topic_path(@topic), notice: '新闻修改成功'
    else
      render action: 'edit'
    end
  end

  def destroy
    @topic.destroy
    redirect_to admin_topics_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:title, :body)
    end
end
