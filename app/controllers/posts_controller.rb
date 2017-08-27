class PostsController < ApplicationController

  def index
    @posts = Post.order("id DESC").all   # 新帖文放前面
  end
end
