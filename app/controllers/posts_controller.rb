class PostsController < ApplicationController
  before_action :set_forum, only: [:show]

  def show
    @post = @forum.posts.find_by(forum_id: @forum.id, id: params[:id])
    @comments = @post.comments.all
  end

  private
  def set_forum
    @forum = Forum.find(params[:forum_id])
  end
end
