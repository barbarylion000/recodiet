class AddCcCiMenuToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :menu, :string
    add_column :meetings, :cc, :integer
    add_column :meetings, :ci, :integer
  end
end
