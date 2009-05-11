class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Succesvol geregistreerd."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:user]) if current_user.admin?
    @user ||= current_user
  end
  
  def update
    @user = User.find(params[:user]) if current_user.admin?
    @user ||= current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
