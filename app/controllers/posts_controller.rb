class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # @author = @post.author

	# with locals, we can completely eliminate the @author = @post.author line in the 
	# posts#show controller action, instead only accessing that data where we need it, in the partial.

  end

  def index
    @posts = Post.all
  end
end
