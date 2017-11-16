class SessionsController < ApplicationController

  def new
  end

  def create
    if params.include?(:name) && params[:name] != ""
      session[:name] = params[:name]
      redirect_to secret_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end