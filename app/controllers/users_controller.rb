class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    session[:pre_login_page] = request.env['HTTP_REFERER']
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the community #{@user.name.split(' ')[0].capitalize}!"
      redirect_to session[:pre_login_page]
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

end
