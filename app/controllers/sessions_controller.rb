class SessionsController < ApplicationController
  def new
  end

  def create 
    if session[:name] = params[name: nil] 
      redirect_to '/'
    else
     session[:name] = params[:name]
    redirect_to '/login'
    end
  end 

  def destroy
    session.delete :name
    redirect_to '/logout'
  end 

end
