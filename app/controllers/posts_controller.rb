Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 @edb-c Sign out
0
0 881 KristenLeach/simple-partials-reading-v-000
forked from learn-co-students/simple-partials-reading-v-000
 Code  Pull requests 0  Projects 0  Insights
simple-partials-reading-v-000/app/controllers/posts_controller.rb
5d5284c  on Apr 20
@KristenLeach KristenLeach Done.
@vicfriedman @KristenLeach @jordanhudgens
     
35 lines (29 sloc)  653 Bytes
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @author = @post.author
  end

  def new
    @post = Post.new
  end

  def create
    @author = Author.first
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.author_id = @author.id
    @post.save
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end
  
end
© 2018 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
Press h to open a hovercard with more details.