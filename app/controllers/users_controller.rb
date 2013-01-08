class UsersController < ApplicationController
  
  def new
    @user = User.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end
  
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to new_session_path, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
