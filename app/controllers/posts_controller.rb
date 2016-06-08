class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
  end

  def show
    @post = Post.find(params[:id])
  end

  def upvote
    @post = Post.find(params[:id]).increment!(:upvotes)
  end

  private

  def post_params
    params.require(:post).permit(:link, :title)
  end
end
