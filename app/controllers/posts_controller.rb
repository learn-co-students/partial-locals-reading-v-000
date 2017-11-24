class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # uneeded because handled by passing local variables into partial
  end

  def index
    @posts = Post.all
  end
end
