class PageController < ApplicationController
  def show
    render params[:id]
  end
end