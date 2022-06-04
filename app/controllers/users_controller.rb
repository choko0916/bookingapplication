class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "プロフィールを更新しました"
      redirect_to  home_index_path
    else
      flash[:notice] = "プロフィールの更新に失敗しました"
      render edit_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:avatar, :name, :introduction).merge(id: current_user.id)
  end
end
