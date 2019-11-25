class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
=begin
    @author = @post.author
=end
  end

  def index
    @posts = Post.all
  end
end
