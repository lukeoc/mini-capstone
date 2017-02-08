class UsersController < ApplicationController

def new
  
end

def create
  user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password]
    )
  if user.save
    session[:user_id] = user.id
    flash[:success] = "successfully created account!"
    redirect_to "/products"
  else
    flash[:warning] = "invalid email or password"
    redirect_to "/signup"
  end
end

end
