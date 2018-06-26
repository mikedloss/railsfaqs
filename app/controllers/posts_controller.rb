class PostsController < ApplicationController
  before_action :set_forum, only: [:show, :new, :create]

  def show
    @post = @forum.posts.find_by(forum_id: @forum.id, id: params[:id])
    @comments = @post.comments.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.forum_id = params[:forum_id]
    byebug
    if @post.save
      redirect_to post_path(params[:forum_id], @post)
    else
      render 'new'
    end
  end

  private
  def set_forum
    @forum = Forum.find(params[:forum_id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :forum_id)
  end
end
