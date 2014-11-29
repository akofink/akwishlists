class PageController < ApplicationController
  def show
    render id
  end

  def welcome
    redirect_to current_user.families if current_user
  end

  private

  def id
    params[:id]
  end
end
