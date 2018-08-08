class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])

    # we can delete the line below since we're calling the local variable when using partials
    # @author = @post.author
  end

  def index
    @posts = Post.all
  end
end
