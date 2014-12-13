class CleansController < ApplicationController

def new
  @clean = Clean.new
end


def create
  @clean = Clean.new(clean_params)
  if @clean.save
    redirect_to clean_path(@clean)
  end
  
end

def show
  @clean = Clean.find(params[:id])
  
end

private

def clean_params
  params.require(:clean).permit(:user_id, :aphoto, :bphoto)
  
end

end
