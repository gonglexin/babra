class Admin::BaseController < ApplicationController
  include Admin::SessionsHelper

  layout 'admin'
  before_action :require_login

  def require_login
    unless signed_in?
      redirect_to admin_login_path, notice: '请登录'
    end
  end
end
