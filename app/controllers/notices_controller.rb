class NoticesController < ApplicationController
before_action :admin_login, only: [:new, :create, :edit, :update, :destroy,]

  def new
    @notice = Notice.new
    @notices = Notice.order(created_at: :DESC)
  end

  def create
    @notice = Notice.new(notices_params)
    if @notice.save
      redirect_to edit_notice_path(@notice.id)
    else
      @notices = Notice.all
      render :new
    end
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
  # --------------ログインしていない場合ルートパスに戻る----------------
  def admin_login
    unless signed_in?
      redirect_to root_path
    end
  end
end
