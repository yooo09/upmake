class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
    #current_user.updateに成功した場合、rootにリダイレクトし、失敗した場合、editのビューを再度描画する
  end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @posts = user.posts.page(params[:page]).per(10).order("created_at DESC")
    # @comment = Comment.new
    # @comments = @post.comments.includes(:user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :nickname)
  end

end
