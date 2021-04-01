class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @blogs = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).premit(:title, :category, :body)
  end


end