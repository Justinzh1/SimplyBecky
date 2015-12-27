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
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.cover = params[:cover]
    @post.save

    redirect_to :root

  end
end
