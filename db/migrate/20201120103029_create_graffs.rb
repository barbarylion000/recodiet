class CreateGraffs < ActiveRecord::Migration[5.0]
  def change
    create_table :graffs do |t|

      t.timestamps
    end
  end
end
