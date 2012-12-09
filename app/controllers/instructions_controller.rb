class InstructionsController < ApplicationController


  def create
    @segment = Segment.find(params[:segment_id])
    @instruction = @segment.instructions.build(params[:instruction])
    if @instruction.save
      flash[:success] = "Instruction created!"
      redirect_to edit_segment_path(@segment.id)
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
