class CategoriesController < ApplicationController
  # before_action :set_group

  # def index
  #   @categories = Category.all
    
  # end

  # def new
  #   @category = Category.new
  # end

  # def create
  #   @category = Category.create(category_params)
  #   if @category.save
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @category = Category.find(params[:id])
  # end

  # def update
  #   @category = Category.find(params[:id])
  #   if @category.update(category_params)
  #     redirect_to root_path
  #   else
  #     render :edit
  #   end
  # end

  # def show
  #   @category = Post.find(params[:id])
  # end

  # def destroy
  #   category = Category.find(params[:id])
  #   category.destroy
  # end

  # private
  # def category_params
  #   params.require(:category).permit(:title)
    # params.require(:category).permit(:title, post_ids: [])
    # .merge(user_id: current_user.id, post_id: params[:post_id])
  # end

end


