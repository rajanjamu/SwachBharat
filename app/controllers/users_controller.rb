class UsersController < ApplicationController
  def index
  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
    if(!@user)
      flash.notice = "Could not log in"
      redirect_to 
    end
  end
end