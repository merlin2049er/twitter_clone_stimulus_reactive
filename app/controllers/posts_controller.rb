class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
    @posts = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

private

def post_params
  params.require(:post).permit(:body)
end

end
