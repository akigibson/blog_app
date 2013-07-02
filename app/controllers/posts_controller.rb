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
    @newpost = Post.new(params[:post])
      if @newpost.save
        redirect_to @newpost, notice: 'Blog was successfully created.'
      else
        render action: 'new'
      end   
  end
  def save
  end
  def edit
    @post = Post.find(params[:id])
    @post.edit
    redirect_to posts_path
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end