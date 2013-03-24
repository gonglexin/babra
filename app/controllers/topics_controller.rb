class TopicsController < ApplicationController
  def index
    @topics = Topic.page(params[:page]).per_page(16).order('created_at DESC')
  end

  def show
    @topic = Topic.find(params[:id])
  end
end
