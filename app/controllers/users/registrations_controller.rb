class Users::RegistrationsController < Devise::RegistrationsController
  
  private
    def resource_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
    end
end