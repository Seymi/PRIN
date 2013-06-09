class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :company
      t.string :sex
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :street_number
      t.string :zip
      t.string :city
      t.string :country
      t.string :tel_fixline
      t.string :tel_mobile
      t.string :email

      t.timestamps
    end
  end
end
