class UsersController < ApplicationController
  
  before_action :check_whether_current_user

  def edit
    @user = current_user
  end

  def update
    @user = current_user
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

  def check_whether_current_user
    if current_user.id != params[:id].to_i #ログイン中のユーザーのidと編集したいユーザーのidが等しいか判定
      flash[:notice] = "権限がありません"
      redirect_to home_index_path
    end
  end

end
