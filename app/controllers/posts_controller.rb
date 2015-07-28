class PostsController < ApplicationController


  def index
    @post = Post.all.first
    @small_title = @post.title
    @body = @post.body
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id].to_i)
    @title = @post.title
  end

  def all
    @posts = Post.all
    @title = "All the great posts"
    @subheading = "All the news that's fit to print"
  end

end
