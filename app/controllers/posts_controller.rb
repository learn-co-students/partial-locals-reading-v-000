class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # don't need the following line:
    # @author = @post.author
  end

  def index
    @posts = Post.all
  end
end
