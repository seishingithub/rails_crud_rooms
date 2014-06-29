class ChangeColumnName < ActiveRecord::Migration
  def change
    change_table :rooms do |t|
      t.rename :RoomType, :Room_type
    end
  end
end