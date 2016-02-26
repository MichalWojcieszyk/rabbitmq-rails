class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      Publisher.publish(@post.attributes)
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  private
  
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
