class PostsController < ApplicationController

  has_attached_file :cover, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  def index
    @posts = Post.order("published_at DESC")
  end

  def show
    @post = Post.find(params[:id])
  end
end
