class MarksController < ApplicationController
  def index
    @marks = Mark.all
    @mark = Mark.new
  end

  # def new
  #   @mark = Mark.new
  # end

  def create
    @mark = Mark.new(mark_params)
    if @mark.save 
      flash.notice = "Mark id:#{@mark.id}|user_id:#{@mark.user_id}|location:#{@mark.location} saved"
      redirect_to dashboard_path
    end
  end

  # def show
  #   @mark = Mark.find(params[:id])
  # end

  def destroy
    @mark = Mark.find(params[:id])
    if(@mark.delete)
      flash.notice = "Mark id:#{@mark.id}|user_id:#{@mark.user_id}|location:#{@mark.location} deleted!"
      redirect_to marks_path
    end
  end

  def edit
    @mark = Mark.find(params[:id])
  end

  def update
    @mark = Mark.find(params[:id])
    if(@mark.update(mark_params))
      flash.notice = "Mark id:#{@mark.id}|user_id:#{@mark.user_id}|location:#{@mark.location} edit!"
      redirect_to mark_path(@mark)
    end
  end

  private
  def mark_params
    params.require(:mark).permit(:user_id, :location, :photo, :message)
  end

end
