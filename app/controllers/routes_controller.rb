class RoutesController < ApplicationController

  def show
    @route = Route.find(params[:id])
  end

  def new
  end
end
