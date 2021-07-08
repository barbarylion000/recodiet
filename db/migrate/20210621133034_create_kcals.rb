class CreateKcals < ActiveRecord::Migration[5.0]
  def change
    create_table :kcals do |t|
      t.integer :weight1
      t.integer :height1
      t.integer :age1
      t.integer :bmr1
      t.integer :tdee1

      t.timestamps
    end
  end
end
