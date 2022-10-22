class NoticesController < ApplicationController
  def new
    @notice = Notice.new
    @notices = Notice.all
  end
  
  def create
    notice = Notice.new(notices_params)
    notice.save
    redirect_to new_notice_path
  end

  def edit
    @notice = Notice.find(params[:id])
  end
  
  def update
    notice = Notice.find(params[:id])
    notice.update(notices_params)
    redirect_to new_notice_path
  end

  def show
    @notice = Notice.find(params[:id])
  end
  
  def destroy
    notice = Notice.find(params[:id])
    notice.destroy
    redirect_to new_notice_path
  end
  
  private

  def notices_params
    params.require(:notice).permit(:title, :notice_details)
  end
end
