class HomeController < ApplicationController
  def home
  end

  def dashboard
  	@marks = Mark.all
    @mark = Mark.new
  end
end
