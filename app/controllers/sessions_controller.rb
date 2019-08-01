class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to 'welcome'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
