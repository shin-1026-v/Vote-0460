class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
    else
      flash.now[:danger] = 'アドレスとパスワードの組み合わせが違います'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = 'ログアウトしました'
    redirect_to root_url
  end
end
