class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Rails Tutorial"
      # redirect_to user_url(@user)と同じ
      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end


  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
