class AddFatToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :fat, :string
  end
end
