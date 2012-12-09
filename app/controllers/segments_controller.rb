class SegmentsController < ApplicationController

  def show
    @segment = Segment.find(params[:id])
  end

  def new
    @segment  = Segment.new
    @vertices = Vertex.all
  end

  def create
    @segment = Segment.new(params[:segment])
    # @segment.ini_vertex_id = params[:segmentV][:ini]
    # @segment.end_vertex_id = params[:segmentV][:end]
    if @segment.save
      flash[:success] = "Nou tram creat!"
      redirect_to @segment
    else
      @vertices = Vertex.all
      render 'new'
    end
  end

  def index
    @segments = Segment.all
  end

end
