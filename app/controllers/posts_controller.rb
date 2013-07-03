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

  def edit
    @newpost = Post.find(params[:id])
  end

  def update
    @post = Post.where(:id => params[:id]).first


    if @post.update_attributes(params[:post])
      redirect_to @post
    else
      render action: "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end