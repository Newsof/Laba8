class CreateArmstrongResults < ActiveRecord::Migration[5.1]
  def change
    create_table :armstrong_results do |t|
      t.integer :a
      t.integer :b
      t.text :result

      t.timestamps null: false
    end
  end
end
