class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
  def show
    @user = User.find(params[:id])
    if session[:user_id] == params[:id]
      @is_you = true
    else 
      @is_you = false
    end
  end
  
end
