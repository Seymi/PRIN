class CreateTestObjects < ActiveRecord::Migration
  def change
    create_table :test_objects do |t|
      t.integer :customer_id
      t.string :desc
      t.string :detail_desc
      t.decimal :weight
      t.boolean :punch
      t.integer :punch_year
      t.string :photo_extension

      t.timestamps
    end
  end
end
