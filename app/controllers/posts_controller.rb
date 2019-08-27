class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    #@author = @post.author no longer needed due to dependency argument in partial
  end

  def index
    @posts = Post.all
  end
end

=begin
  
Information About the Post
<%= render 'authors/author' %> #rendering partial for repeated code
<%= @post.title %>
<%= @post.content %>

This is changed to

#more explicit about that partial's dependencies. 
A dependency is data that the code requires in order to work (like passing a variable into a method). 
In this case, the dependency of the author partial is the instance variable @author. 

<%= render partial: "authors/author", locals: {post_author: @author} %>
<%= @post.title %>
<%= @post.content %>

Our partial is changed to accept dependancies as an argument
#_author

<ul>
  <li> <%= post_author.name %></li>
  <li> <%= post_author.hometown %></li>
</ul>

  
=end