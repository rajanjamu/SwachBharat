class HomeController < ApplicationController
  def index
  end

  def dashboard
    end

  def sample
  end

  # def login
  # 	# http://3adly.blogspot.in/2012/12/ruby-on-rails-facebook-application.html
  # 	session[:oauth] = Koala::Facebook::OAuth.new(APP_ID, APP_SECRET, SITE_URL + '/')
  #   @auth_url =  session[:oauth].url_for_oauth_code(:permissions=>"read_stream publish_stream")  
 	#   redirect_to @auth_url
  # end
end
