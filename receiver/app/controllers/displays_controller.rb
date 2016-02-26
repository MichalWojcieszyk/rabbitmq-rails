class DisplaysController < ApplicationController
  def index
    @posts = RecentPosts.list
  end
end