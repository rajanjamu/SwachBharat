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
      flash.notice = "Mark #{@mark.user_name} saved"
      redirect_to marks_path
    end
  end

  def show
    @mark = Mark.find(params[:id])
  end

  # def edit
  #   @mark = Mark.find(params)
  # end

  def delete
    @mark = Mark.find()
  end

  private
  def mark_params
    params.require(:mark).permit(:user_id, :location, :photo)
  end

end
