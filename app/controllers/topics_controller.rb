class TopicsController < ApplicationController
  def list
    @topics = Topic.all
  end

  def new
    render "new", layout: false
  end

  def create
    @topic = Topic.new(params[:topic])
    @topic.save
    redirect_to root_path
  end

  def edit
    @topic = Topic.find(params[:id])
    render "edit", layout: false
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update_attributes(params[:topic])
    redirect_to root_path
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path
  end
end
