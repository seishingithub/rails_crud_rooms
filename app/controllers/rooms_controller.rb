class RoomsController < ApplicationController

  def index
    @room = Room.new
    @rooms = Room.all
  end

  def create
    @room = Room.create(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :index
    end
  end

  private

  def room_params
    params.require(:room).permit(:Room_type, :Usage)
  end
end