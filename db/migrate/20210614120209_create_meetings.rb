class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.integer :name
      t.datetime :start_time
      t.integer :fat

      t.timestamps
    end
  end
end
