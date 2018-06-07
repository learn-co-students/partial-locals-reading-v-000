class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # @author = @post.author -- this line is no longer needed because we are using a partial
  end


  def index
    @posts = Post.all
  end
end
