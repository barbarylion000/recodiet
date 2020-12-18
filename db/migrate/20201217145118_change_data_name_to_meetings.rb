class ChangeDataNameToMeetings < ActiveRecord::Migration[5.0]
  def change
    change_column :meetings, :name, "USING name::integer"
  end
end
