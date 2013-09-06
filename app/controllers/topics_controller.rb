class TopicsController < ApplicationController
  def list
    @topics = Topic.all
  end

  def new
    respond_to do |format|
        format.js {render new}
    end
  end

  def create
    @topic = Topic.new(params[:topic])
    @topic.created_at = Time.current
    @topic.updated_at = Time.current
    @topic.save
    redirect_to :action => :list, :id => @topic.id
  end
end
