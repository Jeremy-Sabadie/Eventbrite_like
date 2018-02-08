class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    if logged_in?
      @users = User.find(params[:id])
    else
      redirect_to login_path
  end
  end

  def edit
    @users = User.find(params[:id])
  end

  def create
    @users = User.create(users_params)
    if @users.save
      log_in @users
      flash.now[:success] = "Voici ta page"
      redirect_to @users
    else 
      render 'new'
    end
  end

  def update
    @users = User.find(params[:id])
    if @users.update(params.require(:users).permit(:email))
       redirect_to @users
    else
      render 'new'
    end
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    redirect_to root_path
  end
  
  private

  def users_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :confirm_password)
    end

end
