class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])

    # NOTE : No longer needed since using locals in view
    # @ author = @post.author
  end

  def index
    @posts = Post.all
  end
end
