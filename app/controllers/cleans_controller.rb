class CleansController < ApplicationController

  def index
    @cleans = Clean.all
    @clean = Clean.new
  end

  # def new
  #   @clean = Clean.new
  # end


  def create
    @clean = Clean.new(clean_params)
    @clean.user_id = current_user.id
    @clean.remote_bphoto_url = @clean.mark.photo_url

    
    if @clean.save
      # redirect_to dashboard_path
    end
    
  end

  def destroy
    @clean = Clean.find(params[:id])
    if(@clean.delete)
      # flash.notice = "Clean id:#{@clean.id}|user_id:#{@clean.user_id}|location:#{@clean.location} deleted!"
      redirect_to dashboard_path
    end
  end

  def show
    @clean = Clean.find(params[:id])
  end

  def update
    @clean = Clean.find(params[:id])
    @clean.isclean = true
    @clean.update_attributes(clean_params)
    redirect_to dashboard_path
  end

  private
  def clean_params
    params.require(:clean).permit(:user_id, :aphoto, :bphoto, :message, :mark_id, :isclean)
  end
end
