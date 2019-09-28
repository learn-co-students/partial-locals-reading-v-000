class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #@author = @post.author
    #above is hashed out because locals are used in the post show file
  end

  def index
    @posts = Post.all
  end
end
