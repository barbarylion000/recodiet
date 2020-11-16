class AddfattoMeetings < ActiveRecord::Migration[5.0]
  def change
      create_table :meetings do |t|
      t.string :name
      t.string :fat
      t.timestamps
      end
  end
end
