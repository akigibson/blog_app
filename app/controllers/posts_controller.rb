class PostsController < ApplicationController

  def index
    @name = "Nick"
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def new
    @newpost = Post.new(params[:id])
  end
  def create
    @blogpost = Post.create(params[:id])
    redirect_to @post
  end
end