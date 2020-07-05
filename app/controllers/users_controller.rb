class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit]

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
       log_in @user
       session[:user_id] = @user.id
       flash[:success] = "登録完了しました!"
       redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    head :no_content
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    def user_admin
      @users = User.all
      if  current_user.admin == false
          redirect_to root_path
      else
          render action: "index"
      end
    end
end
