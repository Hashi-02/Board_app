class AddUserToBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :user, :string
  end
end
