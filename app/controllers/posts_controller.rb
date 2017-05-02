class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_url, notice: 'Post created'
    else
      redirect_to new_post_path, notice: 'Post creation failed. Try again!'
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
