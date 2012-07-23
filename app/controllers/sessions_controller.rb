class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
#    redirect_to root_url
    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
     #redirect_to root_url
    redirect_to root_url, notice: "Sined out!"
  end


def failure
	redirect_to root_url, alert: "Authentication failed, please try again."
end
def new
end


end

