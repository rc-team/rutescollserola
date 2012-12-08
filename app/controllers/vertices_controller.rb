class VerticesController < ApplicationController

  def show
    @vertex = Vertex.find(params[:id])
  end

  def new
    @vertex = Vertex.new
  end

  def create
    @vertex = Vertex.new(params[:vertex])
    if @vertex.save
      flash[:success] = "Nou vertex afegit!"
      redirect_to @vertex
    else
      render 'new'
    end
  end

  def index
    @vertices = Vertex.all
  end

end
