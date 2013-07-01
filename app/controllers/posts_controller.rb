class PostsController < ApplicationController

  def index
    @name = "Nick"
    @posts = Post.all
  end

end