class SessionsController < ApplicationController
  before_action :set_up_session

  def new
  end

  def create
    if @session.valid_password?
      flash[:success] = 'Logged in'
      update_current_user @session.user
      redirect_to user_families_path(current_user)
    else
      render :new
    end
  end

  def destroy
    flash[:info] = 'Logged out'
    update_current_user_id nil
    redirect_to :root
  end

  private

  def set_up_session
    @session = Session.new(login_params)
  end

  def login_params
    if params[:session]
      params
        .require(:session)
        .permit(:username, :password)
    else
      params
    end
  end
end
