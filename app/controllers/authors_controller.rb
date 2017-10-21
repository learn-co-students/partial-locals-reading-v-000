class AuthorsController < ApplicationController
  def show
    @post = Post.find(params[:id])

  end

  def index
    @authors = Author.all
  end
end
