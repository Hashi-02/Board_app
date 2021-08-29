class AddUserIdToBoards < ActiveRecord::Migration[6.1]
  def change
  add_column :boards, :user_id, :inteder
  end
end
