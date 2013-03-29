class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: :update

  def edit
    @user = current_user
  end

  def update
    if @user.authenticate(user_params[:current_password]) && @user.update(user_params)
      sign_out
      redirect_to admin_login_path, notice: '密码修改成功,请重新登录!'
    else
      #redirect_to admin_setting_path, alert: '请确认您填写的密码是正确的'
      render 'edit'
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :current_password, :password, :password_confirmation)
    end
end
