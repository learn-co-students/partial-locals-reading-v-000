class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])

  # https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-8-layouts-and-partials/partial-with-locals
  # Now notice that, if we choose to delete the line
  # <%= render {partial: "authors/author", locals: {post_author: @author}} %>
  # from the posts/show view, calling the partial requires us to pass in data about the author.
  # The @author = @post.author line in our PostsController may no longer be needed.
  # In fact, with locals, we can completely eliminate the @author = @post.author
  # line in the posts#show controller action, instead only accessing that data where we need it,
  # in the partial.
  # @author = @post.author  <=# Thus, we remove this line of code
  end

  def index
    @posts = Post.all
  end
end
