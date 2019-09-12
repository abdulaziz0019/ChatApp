class ApplicationController < ActionController::Base

helper_method :current_user,:logged_in,:is_admin

def
  current_user
  @current_user ||= User.find_by(session[:user]) if session[:user_id]
end

def logged_in
  !!current_user
end

def is_admin
  logged_in && current_user.admin?
end

def required_user
  if !logged_in
  flash[:danger] = "better be logged in"
  redirect_to login_path
  end
end

end
