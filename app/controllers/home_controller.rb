class HomeController < ApplicationController
  def home
  end

  def dashboard
  	@marks = Mark.all
    @mark = Mark.new
    # @mark = Mark.new(user_id: current_user.id)
    # @mark = current_user.marks.new

    @cleans = Clean.all
    @clean = Clean.new
  end

  def contact
  end

  def about
    @user = current_user
  end

end
