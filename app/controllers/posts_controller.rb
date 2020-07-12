class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @categories = Category.all
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @post = Post.new
    # @category = Category.new
  end

  def create

    @post = Post.create(post_params)
    # redirect_to @post
    # @post = Post.new(_params)
    # category_list = params[:post][:category_title].split(",")
    # respond_to do |format|
    #   if @post.save
    #     @post.save_posts(category_list)
    #     # format.html { redirect_to @post, notice: '記事を投稿しました' }
    #     # format.json { render :show, status: :created, location: @blog }
    #   else
    #     # format.html { render :new }
    #     # format.json { render json: @blog.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
    @categories = Category.all
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end


  private
  def post_params
    # params.require(:post).permit(:text, :image, :category_ids[]).merge(user_id: current_user.id)
    params.require(:post).permit(:text, :image, :category_ids).merge(user_id: current_user.id)

  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
