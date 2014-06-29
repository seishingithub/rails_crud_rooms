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

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update_attributes!(room_params)

    redirect_to rooms_path
  end

  private

  def room_params
    params.require(:room).permit(:Room_type, :Usage)
  end
end