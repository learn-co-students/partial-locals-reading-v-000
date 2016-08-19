class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @author = @post.author #not needed anymore w locals
  end

  def index
    @posts = Post.all
  end
end
