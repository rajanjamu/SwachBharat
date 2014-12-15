class HomeController < ApplicationController
  def home
  end

  def dashboard
  	@marks = Mark.all
    @mark = Mark.new

    @cleans = Clean.all
    @clean = Clean.new
  end
end
