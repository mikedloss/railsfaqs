class ForumsController < ApplicationController
  def index
    @forums = Forum.all
  end

  def show
    @forum = Forum.find(params[:id])
    @threads = @forum.forum_threads.all
  end
end
