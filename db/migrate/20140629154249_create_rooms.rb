class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :RoomType
      t.string :Usage
    end
  end
end
