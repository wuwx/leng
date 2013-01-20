class Api::V1::UsersController < Api::V1::ApplicationController
  
  protected
    def resource_params
      [params.require(:user).permit(:name, :email, :password, :password_confirmation)] unless request.get?
    end
    
end
