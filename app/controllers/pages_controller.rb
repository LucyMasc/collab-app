class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, :only => "index", :raise => false
  def index
    @posts = Post.limit(5)
  end
end
