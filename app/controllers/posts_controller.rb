class PostsController < ApplicationController
  def show
    @author = @post.author
  end

  def index
    @posts = Post.all
  end
end
