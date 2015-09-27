class PostsController < ApplicationController
  def index
    @posts = Post.all
    for i in 0..@posts.count do
      if i % 5 == 0
        @posts[i].title = "CENSORED"  
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
