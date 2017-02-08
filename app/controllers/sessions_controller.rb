class SessionsController < ApplicationController

def new
  
end

def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    flash[:success] = "successfully logged in!"
    redirect_to "/products"
  else
    flash[:warning] = "invalid email or password"
    redirect_to "/login"
  end
end

def destroy
  session[:user_id] = nil
  flash[:success] = "successfully logged out!"
  redirect_to "/login"
end

end
