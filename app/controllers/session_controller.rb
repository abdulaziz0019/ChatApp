class SessionController < ApplicationController

before_action :logged_in_redirect , only: [:new,:create]


  def new

  end
 def create
# find the user, by email compared to param[:seassion][:email]
   user = User.find_by(username:  params[:session][:username])
   # if user exists then auth by user,auth(params[seassion and password])
   if user && user.authenticate(params[:session][:password])
     #save the id in seassion if user exists
     session[:user_id] = user.id
     flash[:positive] = "you are very welcome"

     redirect_to chatroom_path
   else
     flash[:error] = "you are entering wrong data"
     redirect_to login_path

   end
 end

def destroy
  session[:user_id] = nil
  redirect_to login_path
end


private
def logged_in_redirect
  if logged_in
    flash[:error] = "you are already logged in "
    redirect_to root_path
  end
end

end
