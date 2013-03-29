class Admin::SessionsController < Admin::BaseController
  skip_before_action :require_login

  def new
    redirect_to admin_root_path if signed_in?
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_to admin_root_path, notice: "欢迎您, #{user.name}"
    else
      flash[:error] = "邮箱或密码错误"
      redirect_to admin_login_path
    end
  end

  def destroy
    sign_out
    redirect_to admin_login_path, notice: '注销登录'
  end
end
