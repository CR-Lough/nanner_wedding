class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new # Initialize an instance of Post for the form
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, notice: 'Post was successfully created.'
    else
      @posts = Post.all # Needed to redisplay the list of posts on the same page
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, images: [])
  end
end
  