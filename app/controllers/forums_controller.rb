class ForumsController < ApplicationController
  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.find(params[:id])
    @posts = @forum.posts.all.order("updated_at DESC")
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    if @forum.save
      redirect_to forums_path
    else
      render 'new'
    end
  end

  private
  def forum_params
    params.require(:forum).permit(:name, :description)
  end
end
