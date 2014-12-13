class MarksController < ApplicationController
  def index
    @marks = Mark.all
  end

  def new
    @mark = Mark.new
  end

  def create
    @mark = Mark.new(mark_params)
    if @mark.save 
      redirect_to marks_path
    end
  end

  private
  def mark_params
    params.require(:mark).permit(:user_id, :location, :photo)
  end

end
