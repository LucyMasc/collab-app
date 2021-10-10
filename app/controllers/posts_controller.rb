class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # raise
  end
end
