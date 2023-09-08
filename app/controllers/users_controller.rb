class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.includes(:user)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

end
