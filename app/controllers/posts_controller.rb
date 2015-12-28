class PostsController < ApplicationController

  def index
    @posts = Post.order("published_at DESC")
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    render 'posts/new'
  end

  def create
    @post = Post.new(posts_params)

    if @post.save
      redirect_to :posts, :notice => "Post was created successfully."
    else
      redirect_to new_post_path, alert: "Error creating post."
    end
  end

  private
  def posts_params
    params.require(:post).permit(:body, :title, :cover, :created_at)
  end

end
