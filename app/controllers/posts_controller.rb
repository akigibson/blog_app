class PostsController < ApplicationController

  def index
    @name = "Nick"
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

end