class PostsController < ApplicationController
  # before_action :get_user, only: [ :edit, :update, :destroy, :show]

  def index
    @page_title = '文章列表'
    @posts = Post.all;
  end

  def new
    @page_title = '新增文章'
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash['notice'] = 'Success!'
      redirect_to :action => :index
    else
      flash['error'] = 'Failure!'
      render :action => :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @page_title = "編輯 #{@post.title}"
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = 'Success!'
      redirect_to :action => :index
    else
      flash[:error] = 'Failure!'
      render :action => :edit
    end
  end

  private

  def post_params
    params.require( :post).permit( :title, :user_id, :content)
  end
end
