class HomeController < ApplicationController
  def index
    @session = session[:id]
    @cookies = request.cookies

    @referer = request.referer
  end

  def change_session
    session[:id] = params[:id]

    redirect_to '/'
  end

  def delete_session
    session[:id] = nil

    redirect_to '/'
  end
end
