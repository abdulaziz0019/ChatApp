class UserController < ApplicationController




  def index
  end
  def new
      @user = User.new
    end

    def create

    end


    private

    def allowed_params
      params.require(:user).permit(:username, :password_digest)
    end

end
